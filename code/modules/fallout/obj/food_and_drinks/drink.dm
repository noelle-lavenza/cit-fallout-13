/obj/item/reagent_containers/food/drinks/flask
	name = "metal flask"
	desc = "A metal container for liquids. Never leave home without one."
	icon_state = "flask"
	icon = 'icons/fallout/objects/containers.dmi'
	custom_materials = list(/datum/material/iron = 500)
	isGlass = FALSE
	volume = 60

/obj/item/reagent_containers/food/drinks/flask/fancy
	name = "fancy flask"
	desc = "Metal flask with a leather sleeve."
	icon_state = "flask_fancy"
	list_reagents = list(/datum/reagent/consumable/ethanol/whiskey = 30)

/obj/item/reagent_containers/food/drinks/flask/survival
	name = "metal flask"
	desc = "Contains water with a little medicinal powder dissolved in it."
	list_reagents = list(/datum/reagent/water = 40, /datum/reagent/medicine/silver_sulfadiazine = 10)

/obj/item/reagent_containers/food/drinks/flask/vault13
	name = "Vault 13 flask"
	desc = "Take a sip from your trusty Vault 13 canteen."
	icon_state = "flask13"
	list_reagents = list(/datum/reagent/water = 30, /datum/reagent/medicine/silver_sulfadiazine = 10, /datum/reagent/medicine/charcoal = 20)

/obj/item/reagent_containers/food/drinks/flask/vault113
	name = "Vault 113 flask"
	desc = "See this large yellow number? It means it's a Vault 113 canteen. Never forget."
	icon_state = "flask113"
	list_reagents = list(/datum/reagent/water = 30, /datum/reagent/radium = 10, /datum/reagent/medicine/mine_salve = 20)

/obj/item/reagent_containers/food/drinks/flask/russian
	name = "russian flask"
	desc = "Every good russian spaceman knows it's a good idea to bring along a couple of pints of whiskey wherever they go."
	icon = 'icons/obj/custom.dmi'
	icon_state = "russianflask"
	volume = 60

/obj/item/reagent_containers/food/drinks/flask/personalmug
	name = "personal mug"
	desc = "A worn mug that is someone favourite."
	icon_state = "mug"
	volume = 30
	spillable = TRUE
	isGlass = TRUE

/obj/item/reagent_containers/food/drinks/bottle/f13nukacola
	name = "Nuka-Cola"
	desc = "The most popular flavored soft drink in the United States before the Great War."
	icon = 'icons/fallout/objects/f13vending.dmi'
	icon_state = "nukacola"
	list_reagents = list(/datum/reagent/consumable/nuka_cola = 25, /datum/reagent/radium = 5)
	foodtype = SUGAR
	isGlass = TRUE

/obj/item/reagent_containers/food/drinks/bottle/f13nukacola/radioactive
	desc = "The most popular flavored soft drink in the United States before the Great War.<br>It was preserved in a fairly pristine state.<br>The bottle is slightly glowing."
	list_reagents = list(/datum/reagent/consumable/nuka_cola = 15, /datum/reagent/radium = 5)

/obj/item/reagent_containers/food/drinks/bottle/sunset
	name = "Sunset Sarsparilla"
	desc = "The most popular flavored root beer in the West!"
	icon = 'icons/fallout/objects/f13vending.dmi'
	icon_state = "sunset"
	list_reagents = list(/datum/reagent/consumable/ethanol/whiskey = 1, /datum/reagent/consumable/sunset = 15, /datum/reagent/medicine/salglu_solution = 5)
	foodtype = SUGAR
	isGlass = TRUE

/obj/item/reagent_containers/food/drinks/bottle/bawls
	name = "Balls Guarana"
	desc = "To give you that Bounce!"
	icon = 'icons/fallout/objects/f13vending.dmi'
	icon_state = "bawls"
	list_reagents = list(/datum/reagent/consumable/coffee = 10, /datum/reagent/consumable/bawls = 15)
	foodtype = SUGAR
	isGlass = TRUE

/obj/item/reagent_containers/food/drinks/bottle/lemonjuice
	name = "Lemon Juice"
	desc = "Whew! Thats some sour pre-war lemon juice! You know what they say about..."
	icon_state = "lemonjuice"
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	isGlass = TRUE
	list_reagents = list(/datum/reagent/consumable/limejuice = 100)
	foodtype = FRUIT

/obj/item/reagent_containers/food/drinks/bottle/instatea
	name = "Silician Instatea"
	desc = "Pre-war powerdered canned tea powder."
	icon_state = "instatea"
	list_reagents = list(/datum/reagent/toxin/teapowder = 98, /datum/reagent/radium = 2)

/obj/item/reagent_containers/food/drinks/soda_cans/cream
	name = "canned cream"
	desc = "It's a can of cream. Made from milk. What else did you think you'd find in there?"
	icon_state = "cream"
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	list_reagents = list(/datum/reagent/consumable/cream = 100)
	foodtype = DAIRY


/obj/item/reagent_containers/food/drinks/bottle/instacocoa
	name = "Silician Instacocoa"
	desc = "Pre-war powerdered canned dried chocolate mix."
	icon_state = "instachoc"
	list_reagents = list(/datum/reagent/consumable/coco = 98, /datum/reagent/radium = 2)

/obj/item/reagent_containers/food/drinks/bottle/instacoffee
	name = "Silician Instacoffee"
	desc = "Pre-war powerdered canned coffee."
	icon_state = "instacoffee"
	list_reagents = list(/datum/reagent/toxin/coffeepowder = 98, /datum/reagent/radium = 2)

/obj/item/reagent_containers/food/drinks/bottle/vim
	name = "Vim"
	desc = "You've got Vim!"
	icon = 'icons/fallout/objects/f13vending.dmi'
	icon_state = "vim"
	list_reagents = list(/datum/reagent/consumable/sugar = 5, /datum/reagent/consumable/vim = 15)
	foodtype = SUGAR
	isGlass = TRUE
