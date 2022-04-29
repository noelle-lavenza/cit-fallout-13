/obj/item/reagent_containers/glass/bottle/blackpowder
	name = "blackpowder bottle"
	desc = "A large bottle containing black powder."
	volume = 60
	list_reagents = list(/datum/reagent/blackpowder = 60)

/obj/item/reagent_containers/glass/bottle/FEV_solution
	name = " FEV bottle"
	desc = "A small vial of the Forced Evolutionary Virus. You think that consuming this would be a bad idea."
	list_reagents = list(/datum/reagent/toxin/FEV_solution = 30)

/obj/item/reagent_containers/glass/bottle/gaia
	name = "gaia bottle"
	desc = "A large bottle containing gaia."
	volume = 60
	list_reagents = list(/datum/reagent/medicine/gaia = 60)

/obj/item/reagent_containers/glass/bottle/radshroom
	name = "mushroom extract bottle"
	desc = "A small flask containing mixed punga and mushrooms. Very good idea to drink this if you are growing third arm."
	volume = 30
	list_reagents = list(/datum/reagent/medicine/radshroom = 30)

/obj/item/reagent_containers/glass/bottle/primitive
	icon_state = "Voodoo"
	possible_transfer_amounts = list(5,10,15,20,30,60)
	volume = 60

/obj/item/reagent_containers/glass/bottle/primitive/update_overlays()
	. = ..()
	if(!cached_icon)
		cached_icon = icon_state
	if(reagents.total_volume)
		return
