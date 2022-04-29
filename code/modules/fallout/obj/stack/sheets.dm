/obj/item/stack/sheet/lead
	name = "lead"
	desc = "Sheets made out of lead."
	singular_name = "lead sheet"
	icon_state = "sheet-lead"
	item_state = "sheet-lead"
	custom_materials = list(/datum/material/lead=MINERAL_MATERIAL_AMOUNT)
	throwforce = 10
	flags_1 = CONDUCT_1
	resistance_flags = FIRE_PROOF
	merge_type = /obj/item/stack/sheet/lead
	grind_results = list(/datum/reagent/lead = 20)
	point_value = 2
	//tableVariant = /obj/structure/table
	material_type = /datum/material/lead

/obj/item/stack/sheet/lead/fifty
	amount = 50

/obj/item/stack/sheet/lead/twenty
	amount = 20

/obj/item/stack/sheet/lead/ten
	amount = 10

/obj/item/stack/sheet/lead/five
	amount = 5
