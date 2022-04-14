/obj/structure/custom_keg
	name = "Plasteel Keg"
	desc = "A large plasteel keg. You can use it to hold liquids. You may wanna label this, too."
	icon = 'icons/obj/objects.dmi'
	icon_state = "keg"
	density = TRUE
	anchored = FALSE
	pressure_resistance = 2 * ONE_ATMOSPHERE
	max_integrity = 300
	var/open = FALSE

/obj/structure/custom_keg/Initialize()
	create_reagents(1000, DRAINABLE | AMOUNT_VISIBLE)
	. = ..()

/obj/structure/custom_keg/examine(mob/user)
	. = ..()
	. += "<span class='notice'>It is currently [open?"open, letting you pour liquids in.":"closed, letting you draw liquids from the tap."]</span>"

/obj/structure/custom_keg/on_attack_hand(mob/user, act_intent = user.a_intent, unarmed_attack_flags)
	open = !open
	if(open)
		reagents.reagents_holder_flags &= ~(DRAINABLE)
		reagents.reagents_holder_flags |= REFILLABLE
		to_chat(user, "<span class='notice'>You open [src], letting you fill it.</span>")
	else
		reagents.reagents_holder_flags &= ~(REFILLABLE)
		reagents.reagents_holder_flags |= DRAINABLE
		to_chat(user, "<span class='notice'>You close [src], letting you draw from its tap.</span>")
	update_icon()

/obj/structure/custom_keg/update_icon_state()
	if(open)
		icon_state = "keg_open"
	else
		icon_state = "keg"
