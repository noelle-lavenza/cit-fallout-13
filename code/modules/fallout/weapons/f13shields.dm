//Legion shield					- Superior version of the Legion shield.
/obj/item/shield/riot/legion
	name = "Legion shield"
	desc = "Heavy shield with metal pieces bolted to a wood backing, with a painted yellow bull insignia in the centre. Bears an inscription on the inside: <i>\"Legio, Aeterna! Aeterna, Victrix! \"</i>."
	icon_state = "legion_shield"
	item_state = "legion_shield"
	lefthand_file = 'icons/mob/inhands/equipment/shields_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/shields_righthand.dmi'
	slot_flags = ITEM_SLOT_BACK
	force = 13
	max_integrity = 300
	custom_materials = list(/datum/material/wood = 16000, /datum/material/iron= 16000)
	repair_material = /obj/item/stack/sheet/mineral/wood
	w_class = WEIGHT_CLASS_BULKY
	attack_verb = list("shoved", "bashed")

/obj/item/shield/riot/legion/shatter(mob/living/carbon/human/owner)
	playsound(owner, 'sound/effects/grillehit.ogg', 100)
	new /obj/item/stack/sheet/metal(get_turf(src))

//Legion buckler shield			- Inferior version of the Legion shield.
/obj/item/shield/legion/buckler
	name = "legion buckler"
	desc = "A lightweight well balanced shield made out of a hard oak and lashed together with solid iron bands. It has a legion emblem charred onto the inside."
	icon_state = "buckler"
	item_state = "buckler"
	lefthand_file = 'icons/mob/inhands/equipment/shields_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/shields_righthand.dmi'
	custom_materials = list()
	resistance_flags = FLAMMABLE
	max_integrity = 200
	force = 15
	throwforce = 15
	throw_speed = 4
	throw_range = 7
	block_chance = 25
	armor = list("linemelee" = 80, "linebullet" = 80, "linelaser" = 80, "energy" = 0, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 70)


//Buckler Wooden Shield			- Cheapest, shittiest shield there is. Found on raider corpses from time to time as well as trash.
/obj/item/shield/riot/buckler
	name = "wooden buckler"
	desc = "A medieval wooden buckler."
	icon_state = "buckler"
	item_state = "buckler"
	lefthand_file = 'icons/mob/inhands/equipment/shields_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/shields_righthand.dmi'
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 10)
	resistance_flags = FLAMMABLE
	repair_material = /obj/item/stack/sheet/mineral/wood
	block_chance = 30
	shield_flags = SHIELD_FLAGS_DEFAULT
	max_integrity = 150

/obj/item/shield/riot/buckler/shatter(mob/living/carbon/human/owner)
	playsound(owner, 'sound/effects/bang.ogg', 50)
	new /obj/item/stack/sheet/mineral/wood(get_turf(src))

//Improvised metal shield				- Not exactly a bad shield but it's made of literal scrap.
/obj/item/shield/makeshift
	name = "scrap shield"
	desc = "A shield made of welded, riveted and glued metal sheets. Crude yet reliant for its cost, having cloth protecting the user from the sharp edges and a leather strap for the wearer to grip it by."
	armor = list("linemelee" = 70, "linebullet" = 70, "linelaser" = 70, "energy" = 0, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 70, "acid" = 80)
	lefthand_file = 'icons/mob/inhands/equipment/shields_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/shields_righthand.dmi'
	item_state = "metal"
	icon_state = "makeshift_shield"
	custom_materials = list(/datum/material/iron = 18000)
	slot_flags = null
	max_integrity = 250 //Made of metal welded together its strong but not unkillable
	force = 10
	throwforce = 7
	w_class = WEIGHT_CLASS_BULKY

//Tribal shield							- It's literally a scrap stopsign. Weak, but funny and setting appropriate.
/obj/item/shield/tribal
	name = "tribal shield"
	desc = "A hexagonal based shield that bears some strange words of the Old World on it. Or maybe it just says 'stop'.. either-or."
	icon_state = "shield_tribal"
	item_state = "shield_tribal"
	force = 20
	throwforce = 5
	throw_speed = 2
	throw_range = 3
	block_chance = 40
	max_integrity = 200
	lefthand_file = 'icons/mob/inhands/equipment/shields_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/shields_righthand.dmi'
	w_class = WEIGHT_CLASS_NORMAL

//Tribal nightmare stalker lined siheld
/obj/item/shield/riot/tribal/nightstalker
	name = "nightstalker shield"
	desc = "An oval shaped shield made of strong wood and nightstalker skin."
	icon_state = "bnightstalker"
	item_state = "bnightstalker"
	lefthand_file = 'icons/mob/inhands/equipment/shields_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/shields_righthand.dmi'
	max_integrity = 300
