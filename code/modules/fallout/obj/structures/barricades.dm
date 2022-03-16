// In this document: Barricades: buildable, provides some cover
#define SINGLE "single"
#define VERTICAL "vertical"
#define HORIZONTAL "horizontal"

#define METAL 1
#define WOOD 2
#define SAND 3

///////////////////////
/// BARRICADE TYPES ///
///////////////////////

/obj/structure/barricade
	name = "chest high wall"
	desc = "Looks like this would make good cover."
	icon = 'icons/fallout/structures/barricades.dmi'
	anchored = TRUE
	density = TRUE
	max_integrity = 100
	proj_pass_rate = 50 //How many projectiles will pass the cover. Lower means stronger cover
	bar_material = METAL
	var/can_build = TRUE

/obj/structure/barricade/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		make_debris()
	qdel(src)

/obj/structure/barricade/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/stack/ore/glass) && bar_material == SAND)
		if(obj_integrity < max_integrity)
			to_chat(user, span_notice("You begin packing sand into the damaged \the [src], repairing them..."))
			if(do_after(user, 3 SECONDS, target = src))
				obj_integrity = clamp(obj_integrity + 30, 0, max_integrity)
				user.visible_message(span_notice("[user] repairs [src] with some sand."),span_notice("You repair [src] with some sand."))
				I.use(1)
		else
			to_chat(user, span_notice("The [src] doesn't need to be repaired."))
		return
	return ..()

/obj/structure/barricade/wooden/attackby(obj/item/weapon/I, mob/living/user, params)
	if(!istype(I, /obj/item/stack/sheet) || !can_build)
		return ..()
	if(!isfloorturf(loc) && !isplatingturf(loc))
		to_chat(user, span_warning("You can only build the structure on a solid floor!"))
		return

	var/walltype
	var/windowtype
	var/structname = "a wall"
	if(istype(I, /obj/item/stack/sheet/mineral/wood))
		walltype = /turf/closed/wall/f13/wood
	else if(istype(I, /obj/item/stack/sheet/cloth))
		walltype = /turf/closed/wall/f13/wood/interior
		structname = "an interior wall"
	else if(istype(I, /obj/item/stack/sheet/leather))
		walltype = /turf/closed/wall/f13/wood/house
		structname = "a house wall"
	else if(istype(I, /obj/item/stack/sheet/glass))
		windowtype = /obj/structure/window/fulltile/house
		structname = "a house window"
	else if(istype(I, /obj/item/stack/sheet/rglass))
		windowtype = /obj/structure/window/fulltile/wood
		structname = "a wood framed window"
	else
		return ..()

	to_chat(user, span_notice("You start building [structname]..."))
	if(do_after(user, 100, target = src) && I.use(3))
		var/turf/open/T = loc
		if(walltype)
			T.ChangeTurf(walltype)
		else if(windowtype)
			new windowtype(T)
		qdel(src)
	return TRUE


//Yeah the new tents go here. Sue me. Use cloth for more posh places like NCR, brahmin skin for tribals/legion//
//You'll find train turfs here too. Sue me.
// should be moved I guess, guh

/obj/structure/barricade/tentleathercorner
	name = "brahmin skin tent"
	icon = 'icons/fallout/turfs/walls/tents.dmi'
	icon_state = "leather_corner"

/obj/structure/barricade/tentleatheredge
	name = "brahmin skin tent"
	icon = 'icons/fallout/turfs/walls/tents.dmi'
	icon_state = "leather_edge"

/obj/structure/barricade/tentclothcorner
	name = "cotton tent"
	icon = 'icons/fallout/turfs/walls/tents.dmi'
	icon_state = "cloth_corner"

/obj/structure/barricade/tentclothedge
	name = "cotton tent"
	icon = 'icons/fallout/turfs/walls/tents.dmi'
	icon_state = "cloth_edge"

/////////////////////////
/// WOODEN BARRICADES ///
/////////////////////////
/obj/structure/barricade/wooden/strong
	name = "strong wooden barricade"
	desc = "This space is blocked off by a strong wooden barricade."
	obj_integrity = 300
	max_integrity = 300
	proj_pass_rate = 30
	can_build = FALSE

/obj/structure/barricade/wooden/crude/snow
	desc = "This space is blocked off by a crude assortment of planks. It seems to be covered in a layer of snow."
	icon_state = "woodenbarricade-snow-old"
	max_integrity = 75

/obj/structure/barricade/wooden/boarded_door
	name = "boarded up"
	desc = "Bunch of planks blocking up a doorway or other opening"
	icon_state = "boarded"
	obj_integrity = 150
	max_integrity = 150
	proj_pass_rate = 0

/obj/structure/barricade/train
	name = "train siding"
	desc = "The side of an ancient train, the vehicles that tamed the West. Now, it's little more than an armoured coffin wall."
	icon = 'icons/fallout/turfs/walls/f13composite.dmi'
	icon_state = "trainwall"
	smooth = TRUE
	canSmoothWith = list(/obj/structure/barricade/train)


//////////////////
/// METAL BARS ///
//////////////////

/obj/structure/barricade/bars
	name = "metal bars"
	desc = "Old, corroded metal bars. Ain't got a file on you, right?" //Description by Mr.Fagetti
	icon_state = "bars"
	obj_integrity = 400
	max_integrity = 400
	proj_pass_rate = 90
	pass_flags = LETPASSTHROW //Feed the prisoners, or not.


////////////////
/// SANDBAGS ///
////////////////

/obj/structure/barricade/sandbags
	bar_material = SAND
	var/drop_amount = 1

/obj/structure/barricade/sandbags/make_debris()
	new /obj/item/stack/ore/glass(get_turf(src), drop_amount)


#undef SINGLE
#undef VERTICAL
#undef HORIZONTAL

#undef METAL
#undef WOOD
#undef SAND
