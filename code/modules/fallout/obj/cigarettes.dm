/obj/item/storage/fancy/cigarettes/cigpack_bigboss
	name = "\improper Big Boss Smokes"
	desc = "For the big man, you need big boss smokes!."
	icon_state = "bigboss"
	spawn_type = /obj/item/clothing/mask/cigarette/bigboss

/obj/item/storage/fancy/cigarettes/cigpack_pyramid
	name = "\improper Pyramid Smokes"
	desc = "For the fine mans Smoke."
	icon_state = "pyramid"
	spawn_type = /obj/item/clothing/mask/cigarette/pyramid

/obj/item/storage/fancy/cigarettes/cigpack_greytort
	name = "\improper Grey Tortoise Smokes"
	desc = "Imported famous cigarettes from the East Coast."
	icon_state = "greytort"
	spawn_type = /obj/item/clothing/mask/cigarette/greytort

/obj/item/clothing/mask/cigarette/bigboss
	name = "Big Boss Cigarette"
	desc = "A Big Boss brand cigarette."
	list_reagents = list(/datum/reagent/drug/nicotine = 15, /datum/reagent/medicine/synaptizine = 5)

/obj/item/clothing/mask/cigarette/pyramid
	name = "Pyramid Smokes Cigarette"
	desc = "A Pyramid brand cigarette."
	list_reagents = list(/datum/reagent/drug/nicotine = 15, /datum/reagent/gold = 3)

/obj/item/clothing/mask/cigarette/greytort
	name = "Grey Tortoise Cigarette"
	desc = "A Grey Tortoise brand cigarette."
	list_reagents = list(/datum/reagent/drug/nicotine = 15, /datum/reagent/medicine/omnizine = 5)


/obj/item/clothing/mask/cigarette/cigar/ncr
	name = "California Slim cigar"
	desc = "A hand rolled cigar made from sun-kissed California tobacco."
	icon_state = "cigar3off"
	icon_on = "cigar3on"
	icon_off = "cigar3off"
	smoketime = 4500
	chem_volume = 75

// Lighters

/obj/item/lighter/fusion
	name = "fusion zippo"
	desc = "A specialty zippo made from a microfusion cell and dedication. Has a much hotter flame than normal."
	icon_state = "slighter"
	heat = 3500
	light_color = LIGHT_COLOR_CYAN
	grind_results = list(/datum/reagent/iron = 1, /datum/reagent/fuel = 5, /datum/reagent/radium = 5)

/obj/item/lighter/military
	name = "pre-war military lighter"
	icon_state = "zippo_military"
	desc = "That's one fancy Zippo!"
	heat = 2500
