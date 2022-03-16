
//.44 Magnum
/obj/item/ammo_box/m44
	name = "speed loader (.44)"
	desc = "Designed to quickly reload revolvers."
	icon_state = "44"
	ammo_type = /obj/item/ammo_casing/m44
	max_ammo = 6
	caliber = "44"
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)
/*
/obj/item/ammo_box/m44/heap
	name = "speed loader (.44) (+Heap!)"
	ammo_type = /obj/item/ammo_casing/F13/m44/heap

/obj/item/ammo_box/m44/armourpiercing
	name = "speed loader (.44) (+AP!)"
	ammo_type = /obj/item/ammo_casing/F13/m44/armourpiercing

/obj/item/ammo_box/m44/toxic
	name = "speed loader (.44) (+TOXIC!)"
	ammo_type = /obj/item/ammo_casing/F13/m44/toxic

/obj/item/ammo_box/m44/fire
	name = "speed loader (.44) (+FIRE!)"
	ammo_type = /obj/item/ammo_casing/F13/m44/fire

*/

/obj/item/ammo_box/m44/empty
	start_empty = 1

/obj/item/ammo_box/tube/m44
	name = "speed loader tube (.44)"
	desc = "Designed to quickly reload repeaters."
	icon_state = "44tube"
	caliber = "44"
	ammo_type = /obj/item/ammo_casing/m44
	max_ammo = 12
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)

/obj/item/ammo_box/tube/m44/empty
	start_empty = 1

//.44 Magnum
/obj/item/ammo_box/m44box
	name = "ammo box (.44 Magnum FMJ)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "44box"
	caliber = "44"
	ammo_type = /obj/item/ammo_casing/m44
	max_ammo = 30
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 14000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/m44box/jhp
	name = "ammo box (.44 Magnum JHP)"
	ammo_type = /obj/item/ammo_casing/m44/jhp
	custom_materials = list(/datum/material/iron = 10000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/m44box/swc
	name = "ammo box (.44 Magnum SWC)"
	ammo_type = /obj/item/ammo_casing/m44/swc
	custom_materials = list(/datum/material/iron = 19000, /datum/material/blackpowder = 2000)

//7.62x51, .308 Winchester
/obj/item/ammo_box/a308box
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	name = "ammo box (.308)"
	icon_state = "308box"
	caliber = "a762"
	ammo_type = /obj/item/ammo_casing/a762/sport
	max_ammo = 30
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 14000, /datum/material/blackpowder = 1000)

/obj/item/ammo_box/a762box
	name = "ammo box (7.62x51 FMJ)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "762box"
	caliber = "a762"
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 30
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 16000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/a762box/jhp
	name = "ammo box (7.62x51 JHP)"
	ammo_type = /obj/item/ammo_casing/a762/jhp
	custom_materials = list(/datum/material/iron = 12000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/a762box/ap
	name = "ammo box (7.62x51 AP)"
	ammo_type = /obj/item/ammo_casing/a762/ap
	custom_materials = list(/datum/material/iron = 20000, /datum/material/titanium = 5000, /datum/material/blackpowder = 2000)

/obj/item/ammo_box/a762box/match
	name = "ammo box (7.62x51 Match)"
	ammo_type = /obj/item/ammo_casing/a762/match
	custom_materials = list(/datum/material/iron = 28000, /datum/material/blackpowder = 3500)

//.45-70 Gov't
/obj/item/ammo_box/c4570box
	name = "ammo box (.45-70 FMJ)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "4570box"
	caliber = "4570"
	ammo_type = /obj/item/ammo_casing/c4570
	max_ammo = 30
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 16000, /datum/material/blackpowder = 2000)

/obj/item/ammo_box/c4570box/jhp
	name = "ammo box (.45-70 JHP)"
	ammo_type = /obj/item/ammo_casing/c4570/jhp
	custom_materials = list(/datum/material/iron = 12000, /datum/material/blackpowder = 2000)

/obj/item/ammo_box/c4570box/swc
	name = "ammo box (.45-70 SWC)"
	ammo_type = /obj/item/ammo_casing/c4570/swc
	custom_materials = list(/datum/material/iron = 20000, /datum/material/blackpowder = 3500)

//Stripper clips

//7.62x51, .308 Winchester
/obj/item/ammo_box/a762
	name = "stripper clip (7.62)"
	desc = "A stripper clip."
	icon_state = "762"
	caliber = "a762"
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/ammo_box/musketbag/
	name = "Bag of Musket Cartridges"
	icon_state = "musketbag"
	ammo_type = /obj/item/ammo_casing/caseless/musketball
	max_ammo = 15
	custom_materials = list(/datum/material/iron = 40000)
	w_class = WEIGHT_CLASS_NORMAL

//7.62x51, .308 Winchester
/obj/item/ammo_box/a308box
	name = "ammo box (.308)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "308box"
	caliber = "a762"
	ammo_type = /obj/item/ammo_casing/a762/sport
	max_ammo = 30
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/a762box
	name = "ammo box (7.62x51 FMJ)"
	icon_state = "762box"
	caliber = "a762"
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 30
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/a762box/jhp
	name = "ammo box (7.62x51 JHP)"
	ammo_type = /obj/item/ammo_casing/a762/jhp

/obj/item/ammo_box/a762box/ap
	name = "ammo box (7.62x51 AP)"
	ammo_type = /obj/item/ammo_casing/a762/ap

/*
/obj/item/ammo_box/magazine/m308/heap
	name = "rifle magazine (.308) (+Heap!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/heap

/obj/item/ammo_box/magazine/m308/armourpiercing
	name = "rifle magazine (.308) (+AP!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/armourpiercing

/obj/item/ammo_box/magazine/m308/toxic
	name = "rifle magazine (.308) (+TOXIC!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/toxic

/obj/item/ammo_box/magazine/m308/fire
	name = "rifle magazine (.308) (+FIRE!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/fire
*/

//shotgun non fancy ammo boxes

/obj/item/ammo_box/shotgun/slug
	name = "Slug shotgun ammo box"
	desc = "A box full of shotgun shells."
	max_ammo = 12
	multiple_sprites = 2
	ammo_type = /obj/item/ammo_casing/shotgun
	icon_state = "lbox"
	start_empty = FALSE

/obj/item/ammo_box/shotgun/buck
	name = "Buckshot shotgun ammo box"
	desc = "A box full of shotgun shells."
	max_ammo = 12
	multiple_sprites = 2
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	icon_state = "gbox"
	start_empty = FALSE

/obj/item/ammo_box/shotgun/magnum
	name = "Magnum buckshot shotgun ammo box"
	desc = "A box full of shotgun shells."
	max_ammo = 12
	multiple_sprites = 2
	ammo_type = /obj/item/ammo_casing/shotgun/magnumshot
	icon_state = "gbox"
	start_empty = FALSE

/obj/item/ammo_box/shotgun/bean
	name = "Beanbag shotgun ammo box"
	desc = "A box full of shotgun shells."
	max_ammo = 12
	multiple_sprites = 2
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	icon_state = "stunbox"
	start_empty = FALSE

/obj/item/ammo_box/shotgun/rubber
	name = "Rubbershot shotgun ammo box"
	desc = "A box full of shotgun shells."
	max_ammo = 12
	multiple_sprites = 2
	ammo_type = /obj/item/ammo_casing/shotgun/rubbershot
	icon_state = "stunbox"
	start_empty = FALSE

/obj/item/ammo_box/a762/doublestacked
	name = "double stack stripper clip (.308)"
	desc = "A stripper clip."
	icon_state = "762a"
	caliber = "a762"
	ammo_type = /obj/item/ammo_casing/a762/sport
	max_ammo = 10
	multiple_sprites = 1
	w_class = WEIGHT_CLASS_SMALL

//5.56x45mm
/obj/item/ammo_box/a556/stripper
	name = "stripper clip (5.56x45mm)"
	desc = "A stripper clip."
	icon_state = "762"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 5
	multiple_sprites = 1
	w_class = WEIGHT_CLASS_SMALL

//5.56x45
/obj/item/ammo_box/a556
	name = "ammo box (5.56 FMJ)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "556box"
	caliber = "a556"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 40
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 20000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/a556/jhp
	name = "ammo box (5.56 JHP)"
	ammo_type = /obj/item/ammo_casing/a556/jhp
	custom_materials = list(/datum/material/iron = 16000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/a556/ap
	name = "ammo box (5.56 AP)"
	ammo_type = /obj/item/ammo_casing/a556/ap
	custom_materials = list(/datum/material/iron = 24000, /datum/material/titanium = 6000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/a556/match
	name = "ammo box (5.56 match)"
	ammo_type = /obj/item/ammo_casing/a556/match
	custom_materials = list(/datum/material/iron = 28000, /datum/material/blackpowder = 3500)

/obj/item/ammo_box/a556/rubber
	name = "ammo box (5.56 rubber)"
	ammo_type = /obj/item/ammo_casing/a556/rubber
	custom_materials = list(/datum/material/iron = 16000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/a556/sport
	name = "ammo box (.223)"
	ammo_type = /obj/item/ammo_casing/a556/sport
	custom_materials = list(/datum/material/iron = 16000, /datum/material/blackpowder = 1000)

//Needler
/obj/item/ammo_box/needle
	name = "needler stripper clip (needle darts)"
	icon_state = "needler"
	caliber = "needle"
	ammo_type = /obj/item/ammo_casing/caseless/needle
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000, /datum/material/glass = 50000)

/obj/item/ammo_box/needleap
	name = "armour-piercing needler stripper clip (needle darts)"
	icon_state = "apneedler"
	caliber = "needle"
	ammo_type = /obj/item/ammo_casing/caseless/needle/ap
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000, /datum/material/glass = 50000)

/obj/item/ammo_box/needleultra
	name = "ultracite needler stripper clip (needle darts)"
	icon_state = "ultraneedler"
	caliber = "needle"
	ammo_type = /obj/item/ammo_casing/caseless/needle/ultra
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000, /datum/material/glass = 50000)

/obj/item/ammo_box/a308
	name = "stripper clip (.308)"
	desc = "A stripper clip."
	icon_state = "308"
	caliber = "a762"
	ammo_type = /obj/item/ammo_casing/a762/sport
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)
	w_class = WEIGHT_CLASS_SMALL
/*
/obj/item/ammo_box/magazine/m308/heap
	name = "rifle magazine (.308) (+Heap!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/heap

/obj/item/ammo_box/magazine/m308/armourpiercing
	name = "rifle magazine (.308) (+AP!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/armourpiercing

/obj/item/ammo_box/magazine/m308/toxic
	name = "rifle magazine (.308) (+TOXIC!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/toxic

/obj/item/ammo_box/magazine/m308/fire
	name = "rifle magazine (.308) (+FIRE!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/fire
*/

/obj/item/ammo_box/a762/doublestacked
	name = "double stack stripper clip (.308)"
	desc = "A stripper clip."
	icon_state = "762a"
	caliber = "a762"
	ammo_type = /obj/item/ammo_casing/a762/sport
	max_ammo = 10
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)
	w_class = WEIGHT_CLASS_SMALL

//5.56x45mm
/obj/item/ammo_box/a556/stripper
	name = "stripper clip (5.56x45mm)"
	desc = "A stripper clip."
	icon_state = "762"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)
	w_class = WEIGHT_CLASS_SMALL

//.45-70 Gov't
/obj/item/ammo_box/c4570
	name = "speed loader (.45-70)"
	desc = "Designed to quickly reload revolvers."
	icon_state = "4570"
	caliber = "4570"
	ammo_type = /obj/item/ammo_casing/c4570
	max_ammo = 6
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)

/obj/item/ammo_box/c4570/empty
	start_empty = 1

/obj/item/ammo_box/tube/c4570
	name = "speed loader tube (.45-70)"
	desc = "Designed to quickly reload repeaters."
	icon_state = "44tube"
	caliber = "4570"
	ammo_type = /obj/item/ammo_casing/c4570
	max_ammo = 10
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)

/obj/item/ammo_box/tube/c4570/empty
	start_empty = 1

//.50 BMG
/obj/item/ammo_box/a50MG
	name = "anti-material ammo rack (.50MG)"
	desc = "A rack of .50 MG ammo, for when you really need something dead."
	icon_state = "50mg"
	caliber = "a50mg"
	ammo_type = /obj/item/ammo_casing/a50MG
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 20000)

/obj/item/ammo_box/a50MG/incendiary
	name = "anti-material incendiary ammo rack (.50MG)"
	desc = "A rack of .50 MG ammo, for when you really need something dead... and also on fire."
	icon_state = "50in"
	ammo_type = /obj/item/ammo_casing/a50MG/incendiary
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)

/*/obj/item/ammo_box/a50MG/AP
	name = "anti-material armor piercing ammo rack (.50MG)"
	desc = "A rack of .50 MG ammo, for when you really need (a very big) something dead."
	icon_state = "50ap"
	ammo_type = /obj/item/ammo_casing/a50MG/AP
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000, /datum/material/glass = 50000)
*/
/obj/item/ammo_box/a50MG/explosive
	name = "anti-material explosive ammo rack (.50MG)"
	desc = "5 rounds of explosive .50 MG. More then enough to kill anything that moves."
	icon_state = "50ex"
	ammo_type = /obj/item/ammo_casing/a50MG/explosive
	max_ammo = 5
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 40000)

//Boxes


//.50 MG and .50 AE
/obj/item/ammo_box/a50MGbox
	name = "ammo box (.50 MG)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "50box"
	caliber = "a50MG"
	ammo_type = /obj/item/ammo_casing/a50MG
	max_ammo = 25
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 20000, /datum/material/blackpowder = 2000)

/obj/item/ammo_box/m127mm
	name = "ammo box (12.7mm)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "50aebox"
	caliber = "12.7"
	ammo_type = /obj/item/ammo_casing/a127mm
	max_ammo = 30
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 11000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/m127mm/jhp
	name = "ammo box (12.7mm JHP)"
	ammo_type = /obj/item/ammo_casing/a127mm/jhp
	custom_materials = list(/datum/material/iron = 11000)

/obj/item/ammo_box/c45rev
	name = "speed loader (.45 ACP)"
	desc = "Designed to quickly reload revolvers."
	icon_state = "10mm"
	caliber = ".45"
	ammo_type = /obj/item/ammo_casing/c45
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_box/c45rev/empty
	start_empty = 1

/obj/item/ammo_box/jerrycan
	name = "jerry can"
	desc = "A jerry can full of napalm and diesel fuel, meant for flamethrowers."
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "jerrycan"
	caliber = "fuel"
	ammo_type = /obj/item/ammo_casing/caseless/flamethrower
	max_ammo = 6 // 3 bursts, you need 2 cans

/obj/item/ammo_box/jerrycan/attack_self(mob/user)
	return TRUE
/obj/item/ammo_box/m22
	name = "ammo box (.22lr)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "22box"
	ammo_type = /obj/item/ammo_casing/a22
	max_ammo = 40
	w_class = WEIGHT_CLASS_SMALL
	custom_materials = list(/datum/material/iron = 6000, /datum/material/blackpowder = 1500)

/obj/item/ammo_box/m22/plinking
	name = "ammo box (.22lr plinking)"
	ammo_type = /obj/item/ammo_casing/a22/plinking
	custom_materials = list(/datum/material/iron = 3000, /datum/material/blackpowder = 1000)

/obj/item/ammo_box/m22/hp
	name = "ammo box (.22lr hollow point)"
	ammo_type = /obj/item/ammo_casing/a22/hp
	custom_materials = list(/datum/material/iron = 8000, /datum/material/blackpowder = 2000)

/obj/item/ammo_box/m473
	name = "ammo box (4.73mm caseless)"
	icon_state = "5mmbox" //i cannot be fucked to make a new sprite for it rn so - someone else can eventually(tm, rights reserved exdee)
	ammo_type = /obj/item/ammo_casing/caseless/g11
	max_ammo = 100

/*
/obj/item/ammo_box/plasmamusket
	name = "Plasma canister box"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "plasmusketbox"
	multiple_sprites = 2
	ammo_type = /obj/item/ammo_casing/caseless/plasmacaster
	max_ammo = 6
	custom_materials = list(MAT_METAL = 1000)
	w_class = WEIGHT_CLASS_NORMAL
*/

/obj/item/ammo_box/m473_box
	name = "ammo box (4.73mm caseless)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "5mmbox"
	caliber = "473mm"
	ammo_type = /obj/item/ammo_casing/caseless/g11
	max_ammo = 50
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 20000, /datum/material/blackpowder = 2500)

/obj/item/ammo_box/c5mm
	name = "ammo box (5mm)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	multiple_sprites = 2
	icon_state = "5mmbox"
	caliber = "5mm"
	ammo_type = /obj/item/ammo_casing/c5mm
	max_ammo = 100
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 25000, /datum/material/blackpowder = 3000)

/obj/item/ammo_box/l10mm
	name = "speed loader (10mm)"
	desc = "Designed to quickly reload revolvers."
	icon_state = "10mm2"
	caliber = "10mm"
	ammo_type = /obj/item/ammo_casing/c10mm
	max_ammo = 12
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 50000)

/obj/item/ammo_box/l10mm/empty
	start_empty = 1

