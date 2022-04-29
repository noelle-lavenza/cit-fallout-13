/obj/item/throwing_star/knife
	name = "throwing knife"
	desc = "A light rusty knife with sharpened tip for easier throwing."
	icon = 'icons/obj/kitchen.dmi'
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	icon_state = "knife_throwing"
	item_state = "knife"
	force = 5
	throwforce = 8
	throw_speed = 4
	embedding = list("pain_mult" = 3, "embed_chance" = 65, "fall_chance" = 0, "embed_chance_turf_mod" = 15)
	armour_penetration = 0.50
	w_class = WEIGHT_CLASS_SMALL
	sharpness = SHARP_EDGED
	custom_materials = list(/datum/material/iron=500, /datum/material/glass=500)
	resistance_flags = FIRE_PROOF

/obj/item/throwing_star/tomahawk
	name = "tomahawk"
	desc = "A very crude heavy axe wrapped around with some cloth. Meant to inflict heavy damage."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "tomahawk"
	item_state = "hatchet"
	lefthand_file = 'icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	force = 15
	throwforce = 30
	throw_speed = 3
	embedding = list("pain_mult" = 2, "embed_chance" = 40, "fall_chance" = 0, "embed_chance_turf_mod" = 15)
	armour_penetration = 0.70
	w_class = WEIGHT_CLASS_NORMAL
	sharpness = SHARP_EDGED
	custom_materials = list(/datum/material/iron=500, /datum/material/glass=500)
	resistance_flags = FIRE_PROOF

/obj/item/throwing_star/spear
	name = "throwing spear"
	desc = "An heavy hefty ancient weapon used to this day, due to its ease of lodging itself into its victim's body parts."
	lefthand_file = 'icons/mob/inhands/items_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/items_righthand.dmi'
	icon_state = "throw_spear"
	item_state = "tribalspear"
	force = 20
	throwforce = 35
	reach = 2
	item_flags = SLOWS_WHILE_IN_HAND
	slowdown = 0.3
	embedding = list("pain_mult" = 2, "embed_chance" = 60, "fall_chance" = 20)
	w_class = WEIGHT_CLASS_NORMAL
