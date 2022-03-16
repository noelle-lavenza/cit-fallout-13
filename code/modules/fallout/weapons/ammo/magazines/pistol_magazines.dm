/obj/item/ammo_box/magazine/m45/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m45/extended
	name = "extended handgun magazine (.45)"
	icon_state = "45exp-12"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = ".45"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m45/extended/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m45/kitchengun
	name = "handgun magazine (.45 cleaning)"
	desc = "BANG! BANG! BANG!"

/obj/item/ammo_box/magazine/pistolm9mm
	name = "pistol magazine (9mm)"
	icon_state = "9x19p-8"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 15

/obj/item/ammo_box/magazine/pistolm9mm/update_icon()
	..()
	icon_state = "9x19p-[ammo_count() ? "8" : "0"]"

/obj/item/ammo_box/magazine/m50
	name = "handgun magazine (.50ae)"
	icon_state = "50ae"
	caliber = ".50"
	max_ammo = 7
	multiple_sprites = 1

/*
---Fallout 13---
*/

/obj/item/ammo_box/magazine/m10mm_adv
	name = "10mm pistol magazine (10mm)"
	icon_state = "10mmadv"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm_adv/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m10mm_adv/simple

/obj/item/ammo_box/magazine/m10mm_adv/simple/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m10mm_adv/ext
	name = "10mm pistol extended magazine (10mm)"
	icon_state = "smg10mm"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 24
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm_adv/ext/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m9mm
	name = "9mm pistol magazine (9mm)"
	icon_state = "9mmp"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 10
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m9mm/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m127mm
	name = "handgun magazine (12.7)"
	icon_state = "magnum"
	ammo_type = /obj/item/ammo_casing/a127mm
	caliber = "12.7"
	max_ammo = 7
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m127mm/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m9mmds
	name = "doublestack pistol magazine (9mm)"
	icon_state = "m9mmds"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 15
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m9mmds/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m44
	name = "handgun magazine (.44 magnum)"
	icon_state = "50ae"
	ammo_type = /obj/item/ammo_casing/m44
	caliber = "44"
	max_ammo = 7
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m44/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m22
	name = "pistol magazine (.22lr)"
	icon_state = "pistol22"
	ammo_type = /obj/item/ammo_casing/a22
	caliber = ".22lr"
	max_ammo = 16
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m22/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m473_pistol
	name = "pistol magazine (4.73mm)"
	icon_state = "45exp"
	caliber = "473mm"
	ammo_type = /obj/item/ammo_casing/caseless/g11
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m473_pistol/empty
	start_empty = 1
