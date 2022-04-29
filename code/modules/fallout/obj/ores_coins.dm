/obj/item/stack/ore/lead
	name = "lead ore"
	icon_state = "lead ore"
	item_state = "lead ore"
	singular_name = "lead ore chunk"
	points = 3
	custom_materials = list(/datum/material/lead=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/lead
	merge_type = /obj/item/stack/ore/lead

/obj/item/stack/ore/blackpowder
	name = "blackpowder"
	icon_state = "Blackpowder ore"
	item_state = "Blackpowder ore"
	singular_name = "blackpowder"
	points = 1
	merge_type = /obj/item/stack/ore/blackpowder
	custom_materials = list(/datum/material/blackpowder=MINERAL_MATERIAL_AMOUNT)
	grind_results = list(/datum/reagent/blackpowder = 50)
	w_class = WEIGHT_CLASS_TINY

/obj/item/stack/ore/blackpowder/fifty
	amount = 50

/obj/item/stack/ore/blackpowder/twenty
	amount = 20

/obj/item/stack/ore/blackpowder/two
	amount = 2

/obj/item/stack/ore/blackpowder/five
	amount = 5
