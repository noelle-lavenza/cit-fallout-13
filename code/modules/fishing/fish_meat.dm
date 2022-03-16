/obj/item/reagent_containers/food/snacks/fishmeat
	icon_state = "fishfillet"
	bitesize = 6
	filling_color = "#FA8072"
	foodtype = MEAT
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("fish" = 1)

/obj/item/reagent_containers/food/snacks/fishmeat/Initialize()
	. = ..()
	eatverb = pick("bite","chew","choke down","gnaw","swallow","chomp")

/obj/item/reagent_containers/food/snacks/fishmeat/carp
	name = "carp fillet"
	desc = "A fillet of carp meat."
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/toxin/carpotoxin = 2, /datum/reagent/consumable/nutriment/vitamin = 2)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/fish
	tastes = list("fish" = 1)

/obj/item/reagent_containers/food/snacks/fishmeat/carp/imitation
	name = "imitation carp fillet"
	desc = "Almost just like the real thing, kinda."

/obj/item/reagent_containers/food/snacks/fishmeat/salmon
	name = "salmon fillet"
	desc = "A raw salmon fillet that has been prepared."
	cooked_type = /obj/item/reagent_containers/food/snacks/fishmeat/salmon/cooked

/obj/item/reagent_containers/food/snacks/fishmeat/salmon/cooked
	name = "cooked salmon fillet"
	desc = "A gorgeously cooked salmon fillet that has a sear that is to die for."
	icon = 'icons/fishing/seafood.dmi'
	icon_state = "smokedsalmon"

/obj/item/reagent_containers/food/snacks/fishmeat/lobster
	name = "lobster meat"
	desc = "Raw lobster meat that has been prepared."
	icon = 'icons/fishing/food.dmi'
	icon_state = "raw_lobster_meat"
	cooked_type = /obj/item/reagent_containers/food/snacks/fishmeat/lobster/cooked

/obj/item/reagent_containers/food/snacks/fishmeat/lobster/cooked
	name = "cooked lobster meat"
	desc = "A deliciously cooked lobster, all ready to consume."
	icon = 'icons/fishing/food.dmi'
	icon_state = "lobster_steamed_simple"

/obj/item/reagent_containers/food/snacks/fishmeat/shrimp
	name = "shrimp"
	desc = "Shrimp that has been prepared to be eaten raw."
	icon = 'icons/fishing/seafood.dmi'
	icon_state = "shrimp_raw"
	cooked_type = /obj/item/reagent_containers/food/snacks/fishmeat/shrimp/cooked

/obj/item/reagent_containers/food/snacks/fishmeat/shrimp/cooked
	name = "cooked shrimp"
	desc = "Shrimp that has been prepared and then cooked."
	icon = 'icons/fishing/seafood.dmi'
	icon_state = "shrimp_cooked"

/obj/item/reagent_containers/food/snacks/fishing
	icon = 'icons/fishing/food.dmi'

/obj/item/reagent_containers/food/snacks/fishing/lobster_deluxe
	name = "lobster deluxe"
	desc = "A fancy lobster dish, served with some greens and a lemon."
	icon_state = "lobster_steamed_deluxe"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6)
	tastes = list("fish" = 2, "pan seared vegtables" = 1)
	foodtype = MEAT | VEGETABLES | FRUIT

/obj/item/reagent_containers/food/snacks/fishing/lobster_roll
	name = "lobster roll"
	desc = "A wonderful cooked lobster inbetween a toasted roll."
	icon_state = "lobster_roll"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("fish" = 1, "breadcrumbs" = 1)
	foodtype = MEAT | GRAIN
