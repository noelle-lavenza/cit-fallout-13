/obj/item/storage/belt/holster
	name = "holster"
	desc = "A holster to carry a handgun and ammo."
	icon_state = "holster"
	item_state = "holster"
	alternate_worn_layer = UNDER_SUIT_LAYER
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_NECK
	always_reskinnable = TRUE
	unique_reskin = list(
						"Shoulder" = "holster",
						"Thigh" = "holster_leg",
						"Hip" = "holster_hip"
						)

/obj/item/storage/belt/holster/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 4
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.can_hold = typecacheof(list(
		/obj/item/gun/ballistic/automatic/pistol,
		/obj/item/gun/ballistic/revolver,
		/obj/item/ammo_box/magazine,
		/obj/item/ammo_box/tube,
		/obj/item/ammo_box/a357,
		/obj/item/ammo_box/l10mm,
		/obj/item/ammo_box/a762,
		/obj/item/ammo_box/shotgun,
		/obj/item/ammo_box/m44,
		/obj/item/ammo_box/a762,
		/obj/item/ammo_box/a556/stripper,
		/obj/item/ammo_box/needle,
		/obj/item/ammo_box/needleap,
		/obj/item/ammo_box/needleultra,
		/obj/item/ammo_box/a308,
		/obj/item/ammo_box/c4570,
		/obj/item/ammo_box/a50MG,
		/obj/item/ammo_box/c45rev,
		/obj/item/gun/energy/laser/solar,
		/obj/item/gun/energy/laser/pistol,
		/obj/item/gun/energy/laser/crusader,
		/obj/item/gun/energy/laser/plasma/pistol,
		/obj/item/gun/energy/plasma/crusader,
		/obj/item/gun/energy/laser/plasma/glock,
		/obj/item/gun/energy/laser/plasma/glock/extended,
		/obj/item/gun/energy/laser/wattz,
		/obj/item/gun/energy/laser/wattz/magneto,
		/obj/item/gun/energy/laser/plasma/alien,
		/obj/item/stock_parts/cell/ammo/ec
		))

/obj/item/storage/belt/holster/full/PopulateContents()
	new /obj/item/gun/ballistic/revolver/police(src)

/obj/item/storage/belt/holster/ranger44/PopulateContents()
	new /obj/item/gun/ballistic/revolver/m29/ranger(src)
	new /obj/item/ammo_box/m44(src)
	new /obj/item/ammo_box/m44(src)
	new /obj/item/ammo_box/m44(src)

/obj/item/storage/belt/holster/ranger357/PopulateContents()
	new /obj/item/gun/ballistic/revolver/colt357/ranger(src)
	new /obj/item/ammo_box/a357(src)
	new /obj/item/ammo_box/a357(src)
	new /obj/item/ammo_box/a357(src)

/obj/item/storage/belt/holster/ranger45/PopulateContents()
	new /obj/item/gun/ballistic/revolver/revolver45/ranger(src)
	new /obj/item/ammo_box/c45rev(src)
	new /obj/item/ammo_box/c45rev(src)
	new /obj/item/ammo_box/c45rev(src)

/obj/item/storage/belt/holster/ranger4570/PopulateContents()
	new /obj/item/gun/ballistic/revolver/sequoia(src)
	new /obj/item/ammo_box/c4570(src)
	new /obj/item/ammo_box/c4570(src)
	new /obj/item/ammo_box/c4570(src)

/obj/item/storage/belt/holster/ranger4570bayonet/PopulateContents()
	new /obj/item/gun/ballistic/revolver/sequoia/bayonet(src)
	new /obj/item/ammo_box/c4570(src)
	new /obj/item/ammo_box/c4570(src)
	new /obj/item/ammo_box/c4570(src)

/obj/item/storage/belt/holster/ranger10mm/PopulateContents()
	new /obj/item/gun/ballistic/revolver/colt6520/ranger(src)
	new /obj/item/ammo_box/l10mm(src)
	new /obj/item/ammo_box/l10mm(src)
	new /obj/item/ammo_box/l10mm(src)

/obj/item/storage/belt/holster/ncr/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/ninemil(src)
	new /obj/item/ammo_box/magazine/m9mm(src)
	new /obj/item/ammo_box/magazine/m9mm(src)
	new /obj/item/ammo_box/magazine/m9mm(src)

/obj/item/storage/belt/holster/ncr_officer/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/m1911(src)
	new /obj/item/ammo_box/magazine/m45(src)
	new /obj/item/ammo_box/magazine/m45(src)
	new /obj/item/ammo_box/magazine/m45(src)

/obj/item/storage/belt/holster/med_lt/PopulateContents()
	new /obj/item/gun/ballistic/revolver/thatgun(src)
	new /obj/item/ammo_box/a556/stripper(src)
	new /obj/item/ammo_box/a556/stripper(src)
	new /obj/item/ammo_box/a556/stripper(src)

/obj/item/storage/belt/holster/hip
	name = "hip holster"
	desc = "A low hanging holster to carry a handgun and ammo."
	icon_state = "holster_hip"
	item_state = "holster_hip"

//Sprite by Pisshole
/obj/item/storage/belt/holster/ncrcf_w
	name = "Worn NCRCF Women's Jacket"
	desc = "A worn, torn women's NCRCF jacket with 'pockets' slit into the inside, letting you hide some things in the seam. Somehow, it fills you with vague feelings of rebellion and mommy and daddy issues. You kind of wish you could fit drugs in this..."
	icon_state = "ncrcf_w"
	item_state = "ncrcf_w"

/obj/item/storage/belt/sabre/twin
	name = "twin sheath"
	desc = "Two sheaths. One is capable of holding everything and the other one is two."
	icon_state = "2sheath"
	item_state = "quiver" //this'll do.
	w_class = WEIGHT_CLASS_BULKY
	fitting_swords = list(/obj/item/melee/smith/wakizashi, /obj/item/melee/smith/twohand/katana, /obj/item/melee/bokken, /obj/item/melee/smith, /obj/item/melee/smith/twohand)
	starting_sword = null

/obj/item/storage/belt/sabre/twin/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 2
	STR.max_w_class = WEIGHT_CLASS_BULKY + WEIGHT_CLASS_NORMAL //katana and waki.

/obj/item/storage/belt/military/alt
	icon_state = "explorer2"
	item_state = "explorer2"

/obj/item/storage/belt/military/assault/legion
	name = "legionnaire marching belt"
	desc = "A belt capable of holding the necessities of a legionnaire."
	icon_state = "legion_belt"
	item_state = "legion_belt"

/obj/item/storage/belt/military/assault/ncr
	name = "NCR patrol belt"
	desc = "A standard issue robust duty belt for the NCR."
	icon_state = "ncr_belt"
	item_state = "ncr_belt"

/obj/item/storage/belt/military/assault/ncr/engineer/PopulateContents()
	new /obj/item/screwdriver(src)
	new /obj/item/wrench(src)
	new /obj/item/weldingtool(src)
	new /obj/item/crowbar(src)
	new /obj/item/wirecutters(src)
	new /obj/item/multitool(src)
	new /obj/item/stack/cable_coil(src,30,pick("red","yellow","orange"))

/obj/item/storage/belt/military/assault/ncr/crossbelt
	name = "NCR officer cross-belt"
	desc = "A polished leather claw belt with cross-strap designed for officers."
	icon_state = "crossbelt"
	item_state = "crossbelt"

/obj/item/storage/belt/military/assault/ncr/crossbelt/reverse
	name = "NCR ranger cross-belt"
	desc = "A polished leather belt with cross-strap."
	icon_state = "crossbelt_reverse"
	item_state = "crossbelt_reverse"

/obj/item/storage/belt/military/reconbandolier
	name = "NCR recon bandolier"
	desc = "A leather bandolier for specialized NCR units."
	icon_state = "recon_bandolier"
	item_state = "recon_bandolier"

/obj/item/storage/belt/military/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/belt/military/NCR_Bandolier
	name = "NCR bandolier"
	desc = "A standard issue NCR bandolier."
	icon_state = "ncr_bandolier"
	item_state = "ncr_bandolier"

/obj/item/storage/belt/military/NCR_Bandolier/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 7

/obj/item/storage/belt/tribe_quiver
	name = "tribal quiver"
	desc = "A simple leather quiver designed for holding arrows."
	icon_state = "tribal_quiver"
	item_state = "tribal_quiver"

/obj/item/storage/belt/tribe_quiver/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 8
	STR.can_hold = typecacheof(list(/obj/item/ammo_casing/caseless/arrow))
	STR.max_w_class = 3
	STR.max_combined_w_class = 24

/obj/item/storage/belt/tribe_quiver/PopulateContents()
	new /obj/item/ammo_casing/caseless/arrow(src)
	new /obj/item/ammo_casing/caseless/arrow(src)
	new /obj/item/ammo_casing/caseless/arrow(src)
	new /obj/item/ammo_casing/caseless/arrow(src)
	new /obj/item/ammo_casing/caseless/arrow(src)
	new /obj/item/ammo_casing/caseless/arrow(src)
	new /obj/item/ammo_casing/caseless/arrow(src)
	new /obj/item/ammo_casing/caseless/arrow(src)

/obj/item/storage/belt/tribe_quiver/AltClick(mob/living/carbon/user)
	. = ..()
	if(!istype(user) || !user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	if(!length(user.get_empty_held_indexes()))
		to_chat(user, span_warning("Your hands are full!"))
		return
	var/obj/item/ammo_casing/caseless/arrow/L = locate() in contents
	if(L)
		SEND_SIGNAL(src, COMSIG_TRY_STORAGE_TAKE, L, user)
		user.put_in_hands(L)
		to_chat(user, span_notice("You take \a [L] out of the quiver."))
		return TRUE
	var/obj/item/ammo_casing/caseless/W = locate() in contents
	if(W && contents.len > 0)
		SEND_SIGNAL(src, COMSIG_TRY_STORAGE_TAKE, W, user)
		user.put_in_hands(W)
		to_chat(user, span_notice("You take \a [W] out of the quiver."))
	else
		to_chat(user, span_notice("There is nothing left in the quiver."))
	return TRUE

/obj/item/storage/belt/utility/bos/PopulateContents()
	new /obj/item/screwdriver/power(src)
	new /obj/item/crowbar/power(src)
	new /obj/item/weldingtool/experimental(src)
	new /obj/item/stack/cable_coil(src, 30, "yellow")
	new /obj/item/multitool/advanced/brass(src)
