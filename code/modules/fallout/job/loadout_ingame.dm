//This file contains code for the ingame loadout selector, used by players AFTER they have already spawned into the round
//How to use? Simply add a /datum/outfit/loadout to the loadout_options list on each job, in the job_types folder

/datum/job
	//List of outfit datums that can be selected by this job - after spawning - as additional equipment.
	//This is on top of the base job outfit
	var/list/datum/outfit/loadout_options

/datum/outfit
////////F13 Randomization Edit
	var/list/all_types = list()
	var/list/all_possible_types = list()
	var/contains_randomisation = FALSE //Used to redo asset loading with randomised outfits

/datum/outfit/New()
	for (var/a in list("uniform", "r_hand", "l_hand", "suit", "shoes", "gloves", "ears", "glasses", "mask", "head", "belt", "r_pocket", "l_pocket", "back", "id", "neck", "backpack_contents", "suit_store"))
		if (islist(vars[a]))
			contains_randomisation = TRUE
			all_possible_types += vars[a]
			vars[a] = pickweight(vars[a])
			all_types += vars[a]
		else if(vars[a])
			all_possible_types += vars[a]
			all_types += vars[a]
	.=..()

//Returns a list of all the item paths this outfit contains, along with a quantity
//Returned list is in the format path = quantity
/datum/outfit/proc/get_all_item_paths()
	var/list/data = list()
	for (var/item in all_types)
		data[item] = 1
	for (var/implant in implants)
		data[implant] = 1

	data.Add(backpack_contents)
	return data

//Returns a list of all the paths this outfit could contain. This includes the entireity of random lists
/datum/outfit/proc/get_all_possible_item_paths()
	var/list/data = list()
	for (var/item in all_possible_types)
		if(!ispath(item))
			world.log << "BAD ITEM IN [type] slots: \"[item]\""
		data[item] = 1
	for (var/implant in implants)
		if(!ispath(implant))
			world.log << "BAD IMPLANT IN [type]: \"[implant]\""
		data[implant] = 1
	if(LAZYLEN(backpack_contents))
		data.Add(backpack_contents)
	return data

//Spawns the entire contents of the outfit into a location.
//This could be a turf or a container, it should probably be one of those two
/datum/outfit/proc/spawn_at(atom/location)
	var/list/paths = get_all_item_paths()
	var/list/items = list()
	for (var/a in paths)
		while (paths[a] > 0)
			items.Add(new a)
			paths[a]--

	for (var/obj/a in items)
		if (location.GetComponent(/datum/component/storage))
			SEND_SIGNAL(location, COMSIG_TRY_STORAGE_INSERT, a, null, TRUE, TRUE)
		else
			a.forceMove(location)

/mob/proc/select_loadout()
	set name = "Select Loadout"
	set category = "IC"

	//To select loadout, the mob must have a loadout selector component
	var/datum/component/loadout_selector/LS = GetComponent(/datum/component/loadout_selector)
	if (!istype(LS))
		//Error message, shouldn't be seen but just incase
		to_chat(src, ("You have either already selected a loadout, or have no options."))

		//If they don't have it, they shouldn't have this verb either
		disable_loadout_select(src)
		return

	LS.ui_interact(src)



//Called when someone spawns in, or maybe if an admin does a thing
/mob/proc/enable_loadout_select()
	//Delay the notification message for a few seconds so players are less likely to miss it
	spawn(5 SECONDS)
		to_chat(src, ("-------------------------------------------"))
		to_chat(src, ("Your job has additional loadout options you can choose from. Use the Loadout Selector in your hands, or the Select Loadout verb in the IC menu to choose your additional equipment."))
		to_chat(src, ("-------------------------------------------"))
	verbs += /mob/proc/select_loadout
	var/datum/component/loadout_selector/LS = AddComponent(/datum/component/loadout_selector) //Create the loadout selecting component
	var/token = new /obj/item/loadout_token
	LS.token = token
	put_in_hands(token)

//Cleans up the verbs, objects and components
//Called after a loadout is selected, or if the user tries to do some exploit to pick a second loadout
/mob/proc/disable_loadout_select()
	verbs -= /mob/proc/select_loadout //Remove the verb
	var/datum/component/loadout_selector/LS = GetComponent(/datum/component/loadout_selector)
	if (LS)
		//Lets close the open UI
		var/datum/tgui/ui = SStgui.try_update_ui(src, LS)
		ui?.close()

		if(!temporarilyRemoveItemFromInventory(LS.token))
			CRASH("Couldn't remove the loadout token!")
		qdel(LS.token)
		LS.RemoveComponent()

/****************
	Object
****************/
/obj/item/loadout_token
	name = "Select Loadout"
	desc = "Activate this item to select your additional loadout equipment. It will vanish once you're done."
	icon = 'icons/effects/landmarks_static.dmi'
	icon_state = "random_loot"

/obj/item/loadout_token/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, TRAIT_GENERIC)


/obj/item/loadout_token/attack_self(mob/user)
	user.select_loadout()

/****************
	Component
****************/
//A datum that handles the menu for loadout selecting, to save on adding variables to things
/datum/component/loadout_selector
	dupe_mode = COMPONENT_DUPE_UNIQUE
	var/list/loadout_options = list() //List of names and typepaths
	var/selected_name = "" //Name of the outfit currently selected
	var/datum/outfit/selected_datum = null //Reference to the datum of the outfit currently selected
	var/selected_items = list() //List of atoms in the selected outfit, this is a list of sublists in the format:
		//[{name: name, icon: icon, quantity: quantity}]

	//A list of names in a format that tgui likes, autogenerated
	var/list/data_names = list()

	//To save on constantly doing expensive operations, we will generate preview images once for each mannequin and cache them
	var/list/preview_images = list()

	var/selected_direction = SOUTH

	var/obj/item/loadout_token/token = null

	var/dummy_key // Used to store the key for the display dummy.

//Lets check that the assigned parent is a mob with a job
/datum/component/loadout_selector/Initialize()
	var/mob/living/L = parent
	if (istype(L))
		var/datum/job/J = L.GetJob()
		if (J && LAZYLEN(J.loadout_options))
			for (var/a in J.loadout_options) //Copy the options from the job
				var/datum/outfit/o = a
				loadout_options[initial(o.name)] = a
				data_names.Add(initial(o.name))
			return ..()

	//If they don't have a job they cant use this
	return COMPONENT_INCOMPATIBLE

//This completes loadout selection, spawns the selected outfit and cleans things up
/datum/component/loadout_selector/proc/finish()
	//First of all, safety checks
	if (!selected_datum)
		return
	if (!parent)
		return

	var/mob/M = parent
	var/obj/item/storage/backpack/duffelbag/duffelkit = new
	duffelkit.name = "equipment duffelbag"
	duffelkit.desc = "A duffelbag containing necessary equipment."
	duffelkit.w_class = WEIGHT_CLASS_BULKY
	selected_datum.spawn_at(duffelkit)
	M.dropItemToGround(token)
	M.put_in_hands(duffelkit)
	clear_human_dummy(dummy_key)
	M.disable_loadout_select()

/datum/component/loadout_selector/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "LoadoutSelect", "Loadout Select")
		ui.set_autoupdate(FALSE)
		ui.open()
		ui.send_asset(get_asset_datum(/datum/asset/spritesheet/loadout))

/datum/component/loadout_selector/ui_data(mob/user)
	var/list/data = list()
	data["outfits"] = data_names
	data["selected"] = selected_name
	if (selected_name)
		data["items"] = selected_items
		if(!(selected_datum.name in preview_images) || !(dir2text(selected_direction) in preview_images[selected_datum.name]))
			generate_previews()
		data["preview"] = preview_images[selected_datum.name][dir2text(selected_direction)]
	return data

/datum/component/loadout_selector/ui_act(action, params)
	if(..())
		return
	switch(action)
		if("loadout_select")
			select_outfit(params["name"])
		if("loadout_confirm")
			if (selected_datum)
				finish()
		if("loadout_preview_direction")
			selected_direction = turn(selected_direction, 90 * text2num(params["direction"]))
	return TRUE

//Selects an outfit and loads the preview of it
/datum/component/loadout_selector/proc/select_outfit(newname)
	//First of all, lets not do unnecessary work.
	//Don't reselect the one we already have selected
	if (newname == selected_name)
		return

	if (selected_datum)
		//If random is used, get rid of the generated previews so we'll regenerate them if we re-select this outfit
		if (selected_datum.contains_randomisation)
			preview_images[selected_datum.name] = null

		//Clean up old dummy/outfit
		QDEL_NULL(selected_datum)

	//Lets just make sure the desired outfit exists, too.
	//We do this after the cleanup so that we can pass null to deselect if desired
	if (!ispath(loadout_options[newname]))
		return

	//Ok we know we're selecting this, so
	selected_name = newname
	var/newtype = loadout_options[selected_name]
	selected_datum = new newtype
	selected_items = selected_datum.ui_data()

	generate_previews()
	spawn()
		if (usr)
			ui_interact(usr)

//This proc creates preview images for an outfit, if needed
/datum/component/loadout_selector/proc/generate_previews()
	//Lets make sure we have a parent mob and a player is connected
	if (!istype(parent, /mob))
		return

	//We need a client to send assets to
	var/mob/M = parent
	if (!M.client)
		return

	if (preview_images[selected_datum.name] && !selected_datum.contains_randomisation)
		return //The images have already been generated

	//They've not been made yet, lets do them. First of all, we make a mannequin based on the user's current appearance
	dummy_key = "loadout_selector_[M.mind?.key || M.ckey]"
	var/mob/living/carbon/human/dummy/mannequin = generate_dummy_lookalike(dummy_key, M)
	unset_busy_human_dummy(dummy_key)

	//Secondly, we equip the currently selected outfit onto that mannequin
	selected_datum.equip(mannequin, visualsOnly = TRUE)

	COMPILE_OVERLAYS(mannequin)

	//Now we have our mannequin, photoshoot time!
	var/list/cached_icons = list()
	for (var/direction in GLOB.cardinals)
		var/icon/preview = getFlatIcon(mannequin, direction)
		//preview.Scale(preview.Width() * 2.5, preview.Height() * 2.5) // scaled in CSS
		cached_icons[dir2text(direction)] = icon2base64(preview)

	preview_images[selected_datum.name] = cached_icons

