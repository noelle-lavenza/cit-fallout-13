/////////////////
//LIGHT PISTOLS//
/////////////////

//.22 Sport							Keywords: .22, Semi-auto, 16 round mags, Suppressed.
/obj/item/gun/ballistic/automatic/pistol/pistol22
	name = ".22 pistol"
	desc = "The silenced .22 pistol is a .22LR round handgun with an integrated silencer."
	icon_state = "silenced22"
	mag_type = /obj/item/ammo_box/magazine/m22
	w_class = WEIGHT_CLASS_SMALL
	fire_delay = 1
	can_suppress = FALSE
	can_unsuppress = FALSE
	suppressed = 1
	fire_sound = 'sound/f13weapons/22pistol.ogg'
//	can_attachments = TRUE

//Browning Hi-power						Keywords: 9mm, Semi-auto, 10 round magazine
/obj/item/gun/ballistic/automatic/pistol/ninemil
	name = "Browning Hi-Power"
	desc = "A mass produced pre-war Browning Hi-power 9mm pistol."
	icon_state = "ninemil"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	can_suppress = TRUE
	fire_sound = 'sound/f13weapons/ninemil.ogg'
//	can_attachments = TRUE
//	suppressor_state = "pistol_suppressor"
//	suppressor_x_offset = 30
//	suppressor_y_offset = 19

//Maria									Keywords: UNIQUE, 9mm, Semi-auto, 10 round magazine
/obj/item/gun/ballistic/automatic/pistol/ninemil/maria
	name = "Maria"
	desc = "An ornately-decorated pre-war Browning Hi-power 9mm pistol with pearl grips and a polished nickel finish. The firing mechanism has been upgraded, so for anyone on the receiving end, it must seem like an eighteen-karat run of bad luck."
	icon_state = "maria"
	item_state = "pistolchrome"
	w_class = WEIGHT_CLASS_SMALL
	fire_delay = 0
//	extra_damage = 8
//	extra_penetration = 0.3

//Beretta M93R							Keywords: 9mm, Automatic, 15 round magazine
/obj/item/gun/ballistic/automatic/pistol/beretta
	name = "Beretta M93R"
	desc = "One of the surviving Beretta model firearms. With a 15 round magazine and burst fire capability, this Italian handgun is competitive even at 9mm."
	icon_state = "m93r"
	mag_type = /obj/item/ammo_box/magazine/m9mmds
	w_class = WEIGHT_CLASS_NORMAL
	burst_size = 3
	spread = 3
	actions_types = list(/datum/action/item_action/toggle_firemode)
	automatic_burst_overlay = TRUE
//	can_attachments = FALSE
//	semi_auto = FALSE
	can_suppress = FALSE
	fire_sound = 'sound/f13weapons/9mm.ogg'
	can_suppress = "pistol_suppressor"
//	suppressor_x_offset = 30
//	suppressor_y_offset = 20

//Sig Sauer P220						Keywords: 9mm, Semi-auto, 10 round magazine
/obj/item/gun/ballistic/automatic/pistol/sig
	name = "Sig P220"
	desc = "The P220 Sig Sauer. A Swiss designed pistol, the Sig Sauer benefits from compact and lightweight construction."
	icon_state = "sig"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	w_class = WEIGHT_CLASS_SMALL
	fire_delay = 1
	can_suppress = TRUE
	fire_sound = 'sound/f13weapons/ninemil.ogg'
//	can_attachments = TRUE
//	extra_damage = 2
//	suppressor_state = "pistol_suppressor"
//	suppressor_x_offset = 30
//	suppressor_y_offset = 20

//Type 17								Keywords: 9mm, Semi-auto, 10 round magazine. Special modifiers: damage +2, spread +3
/obj/item/gun/ballistic/automatic/pistol/type17
	name = "Type 17 Mauser"
	desc = "A reproduction of the WW2 weapon and issued to the Chinese military at the time of the Great War. Most samples seen are surplus finds from the time of the Great War. Chambered in 9mm."
	icon_state = "c96"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	w_class = WEIGHT_CLASS_SMALL
//	extra_damage = 2
	spread = 3
	fire_delay = 1
	can_suppress = FALSE
	fire_sound = 'sound/f13weapons/ninemil.ogg'

//N99  10mm								Keywords: 10mm, Semi-auto, 12/24 round magazine
/obj/item/gun/ballistic/automatic/pistol/n99
	name = "N99 pistol"
	desc = "A pre-war large-framed, gas-operated advanced 10mm pistol."
	icon_state = "n99"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv
	fire_sound = 'sound/f13weapons/10mm_fire_02.ogg'
	w_class = WEIGHT_CLASS_NORMAL
//	can_attachments = TRUE
	fire_delay = 2
	can_suppress = TRUE
//	can_automatic = FALSE
//	suppressor_state = "n99_suppressor"
//	suppressor_x_offset = 29
//	suppressor_y_offset = 15

//'The Executive'						Keywords: UNIQUE, Cog City, 10mm, Semi-auto, 12/24 round magazine
/obj/item/gun/ballistic/automatic/pistol/n99/executive
	name = "Executive N99"
	desc = "A gas-operated N99 pistol chambered in 10mm rounds. It has an accurate two-round-burst and a blue Vault-Tec finish, for only the most robust overseers."
	icon_state = "executive"
	can_suppress = TRUE
	burst_size = 2
//	extra_damage = 2
//	can_automatic = FALSE
//	extra_penetration = 0.2 //2x 35 damage, 10 AP- hits like a 2rd burst 5.56, but more accurate
//	semi_auto = FALSE

//Desert Eagle							Keywords: .44 Magnum, Semi-auto, Long barrel, 8 round magazine.
/obj/item/gun/ballistic/automatic/pistol/deagle
	name = "Desert Eagle"
	desc = "A robust .44 magnum semi-automatic handgun."
	icon_state = "deagle"
	item_state = "deagle"
	mag_type = /obj/item/ammo_box/magazine/m44
	weapon_weight = WEAPON_MEDIUM
	force = 15
//	extra_damage = 4
	recoil = 0.1
	can_suppress = FALSE
	automatic_burst_overlay = FALSE
	fire_sound = 'sound/f13weapons/44mag.ogg'

//Colt M1911						Keywords: 45 APC, Semi-auto, 8 round mags.
/obj/item/gun/ballistic/automatic/pistol/m1911
	name = "M1911"
	desc = "A classic .45 handgun with a small magazine capacity."
	icon_state = "m1911"
	item_state = "pistolchrome"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/m45
	always_reskinnable = TRUE
	unique_reskin = list("Default" = "m1911",
						"Custom" = "m1911_custom"
						)
	can_suppress = TRUE
//	extra_damage = 2
	fire_delay = 2
//	can_attachments = TRUE
//	suppressor_state = "pistol_suppressor"
//	suppressor_x_offset = 30
//	suppressor_y_offset = 21

/obj/item/gun/ballistic/automatic/pistol/m1911/no_mag
	spawnwithmagazine = FALSE

//.45 Autoloader						Keywords: 45 ACP, Semi-Auto, 12 round magazine
/obj/item/gun/ballistic/automatic/pistol/autoloader
	name = ".45 Autoloader"
	desc = "A sleek looking handgun chambered in .45 ACP for all your operating needs. Don't let the slide catch your finger though."
	icon_state = "autoloader"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/m45
	fire_sound = 'sound/f13weapons/45revolver.ogg'
	fire_delay = 3.5
//	extra_damage = 4
//	extra_penetration = 0.1
	can_suppress = TRUE
//	suppressor_state = "pistol_suppressor"
//	suppressor_x_offset = 28
//	suppressor_y_offset = 20

//12.7mm Pistol					Keywords: 12.7mm, Semi-Auto, 7 round mags
/obj/item/gun/ballistic/automatic/pistol/pistol127
	name = "12.7mm pistol"
	desc = "A Swiss SIG-Sauer 14mm handgun rechambered for 12.7mm ammunition, likely designed for long-range pistol hunting or target shooting."
	icon_state = "pistol127"
	force = 14
	mag_type = /obj/item/ammo_box/magazine/m127mm
	fire_delay = 4
	can_suppress = TRUE
	fire_sound = 'sound/f13weapons/magnum_fire.ogg'
//	suppressor_x_offset = 30
//	suppressor_y_offset = 19
//	suppressor_state = "n99_suppressor"
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_HEAVY

//'Lil' Devil' 12.7mm Pistol 	Keywords: UNIQUE, 12.7mm, Semi-Auto, 7 round mags
/obj/item/gun/ballistic/automatic/pistol/pistol127/lildevil
	name = "Lil' Devil 12.7mm pistol"
	desc = "A Swiss SIG-Sauer 14mm handgun rechambered for 12.7mm ammunition, likely designed for long-range pistol hunting or target shooting. A finely tuned firearm from the Gunrunners."
	icon_state = "lildev"
	force = 18
	fire_delay = 3
//	extra_damage = 4
	weapon_weight = WEAPON_LIGHT

//////////////////
//BOS SNOWFLAKE //
//////////////////

/obj/item/gun/ballistic/automatic/pistol/crusader_pistol
	name = "Crusader pistol (10mm)"
	desc = "A modular pistol of native Brotherhood of Steel design. Currently chambered in 10mm. Complete with a threaded barrel to allow for attachments."
	icon_state = "crusader_pistol"
	item_state = "crusader_pistol"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv
	fire_sound = 'sound/f13weapons/10mm_fire_02.ogg'
	w_class = WEIGHT_CLASS_NORMAL
//	can_attachments = TRUE
	fire_delay = 2
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/crusader_rifle
	name = "Crusader pistol (4.73mm caseless)"
	desc = "A modular pistol of native Brotherhood of Steel design. Currently chambered in 4.73mm caseless. Perfect for a stealthy operator with style."
	icon_state = "crusader_rifle"
	item_state = "crusader_rifle"
	mag_type = /obj/item/ammo_box/magazine/m473_pistol
	fire_sound = 'sound/f13weapons/magnum_fire.ogg'
	w_class = WEIGHT_CLASS_NORMAL
//	can_attachments = FALSE
	fire_delay = 2
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/crusader_rifle_ncr
	name = "Crusader pistol (5.56mm)"
	desc = "A modular pistol of native Brotherhood of Steel design. Currently chambered in 5.56mm. A pocket-rifle! Well.. if you excuse it only taking 10 round magazines."
	icon_state = "crusader_rifle"
	icon_state = "crusader_rifle"
	mag_type = /obj/item/ammo_box/magazine/m556/rifle/small
	fire_sound = 'sound/f13weapons/magnum_fire.ogg'
	w_class = WEIGHT_CLASS_NORMAL
//	can_attachments = FALSE
//	can_automatic = FALSE
	fire_delay = 2
	can_suppress = FALSE
