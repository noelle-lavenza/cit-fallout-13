/////////////////////
// 10 MM REVOLVERS //
/////////////////////

//Colt 6520			 							Keywords: 10mm, Double action, 12 rounds cylinder
/obj/item/gun/ballistic/revolver/colt6520
	name = "Colt 6520"
	desc = "The Colt 6520 10mm double action revolver is a highly durable weapon developed by Colt Firearms prior to the Great War. It proved to be resistant to the desert-like conditions of the post-nuclear wasteland and is a fine example of workmanship and quality construction."
	icon_state = "colt6520"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev6520
	fire_sound = 'sound/f13weapons/10mm_fire_02.ogg'
//	extra_damage = 3
	fire_delay = 4

//Zhurong										Keywords: UNIQUE, 10mm, Double action, 12 round cylinder
/obj/item/gun/ballistic/revolver/zhurong
	name = "Zhu-Rong v417"
	desc = "The earlier model of the Chinese pistol found in the East Coast, which was known to be the model before all the simplifications of the design, making it smoother, packing a harderer punch. Chambered in 10mm."
	icon_state = "zhurong"
	w_class = WEIGHT_CLASS_SMALL
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/zhurong
	fire_delay = 0
//	extra_damage = 20
//	extra_penetration = 0.1
	fire_sound = 'sound/f13weapons/ninemil.ogg'

//10mm Ranger Revolver - Sprite by Pisshole
/obj/item/gun/ballistic/revolver/colt6520/ranger
	name = "10mm 'Hard-Boiled' Special"
	desc = "A shiny big iron that was popular among tax collectors and insurance investigators before the war. While technically based on a law-enforcement variant of the 6520, it is outfitted uniquely with modifications including a larger trigger guard and heavier weight to counterbalance its fire rate."
	icon_state = "ranger6520"
	obj_flags = UNIQUE_RENAME
	unique_reskin = list("Classic" = "colt6520",
						"10mm 'Hard-Boiled' Special" = "ranger6520"
						)

///////////////////////
// .45 ACP REVOLVERS //
///////////////////////

/obj/item/gun/ballistic/revolver/revolver45
	name = "Colt .45"
	desc = "An old Single Action Army retooled for .45 ACP. Classic Americana, its wooden grip is worn and the steel dark from many years of use, though it is in relatively good condition."
	item_state = "45revolver"
	icon_state = "45revolver"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev45
//	extra_damage = 5
	fire_delay = 4
	fire_sound = 'sound/f13weapons/45revolver.ogg'

//.45 Ranger Revolver - Sprite by Pisshole
/obj/item/gun/ballistic/revolver/revolver45/ranger
	name = "Casull Cowboy .45"
	desc = "A rare .454 Casull revolver in incredibly well-maintained condition, polished to a mirror sheen. It's been rechambered to fit .45 ACP for some reason. Most of these have been lost to the mists of time."
	icon_state = "ranger45"
	obj_flags = UNIQUE_RENAME
	unique_reskin = list("Classic" = "45revolver",
						"Casull Cowboy .45" = "ranger45"
						)

////////////////////
// .357 REVOLVERS //
////////////////////

//Police revolver					Keywords: .38, Double action, 6 rounds cylinder
/obj/item/gun/ballistic/revolver/police
	name = ".38 police revolver"
	desc = "Pre-war double action police revolver in .357 calibre."
	icon_state = "police"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev357
	w_class = WEIGHT_CLASS_SMALL
	fire_sound = 'sound/f13weapons/policepistol.ogg'
	fire_delay = 5

//357 Magnum					Keywords: .357, Double action, 6 rounds cylinder
/obj/item/gun/ballistic/revolver/colt357
	name = ".357 magnum revolver"
	desc = "A relatively primitive .357 magnum revolver."
	item_state = "357colt"
	icon_state = "357colt"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev357
	fire_delay = 4
	fire_sound = 'sound/f13weapons/357magnum.ogg'

//Lucky							Keywords: UNIQUE, .357, Double action, 6 rounds cylinder, Block chance,
/obj/item/gun/ballistic/revolver/colt357/lucky
	name = "Lucky 37"
	desc = "One of the few weapons designed and created purely in the post-war world, it takes .38 ad .357 rounds, adjusting the rifling and boring based upon which is loaded."
	item_state = "357colt"
	icon_state = "lucky37"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/lucky37
	block_chance = 20

//.357 Ranger Revolver - Sprite by Pisshole
/obj/item/gun/ballistic/revolver/colt357/ranger
	name = "Lawman Autorevolver"
	desc = "A pre-war conceptualized .357 never manufactured due to niche design, it's become a semi-common sight among NCR ranger big-irons. Its weight is a little more than it looks - and it already looks a bit oversized. Even so, the most interesting thing about it (aside from the golden bear design imprinted upon an embedded medallion in the grip) is that it is break-open style."
	icon_state = "ranger357"
	obj_flags = UNIQUE_RENAME
	unique_reskin = list("Classic" = "357colt",
						"Lawman Autorevolver" = "ranger357"
						)

///////////////////
// .44 REVOLVERS //
///////////////////

//.44 Magnum revolver		 	Keywords: .44, Double action, 6 rounds cylinder
/obj/item/gun/ballistic/revolver/m29
	name = ".44 magnum revolver"
	desc = "Being that this is the most powerful handgun in the world, and can blow your head clean-off, you've got to ask yourself one question. Do I feel lucky? Well, do ya punk? "
	item_state = "colt44"
	icon_state = "m29"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev44
	fire_sound = 'sound/f13weapons/44mag.ogg'
	recoil = 0.1
//	can_scope = TRUE
//	scope_state = "revolver_scope"
//	scope_x_offset = 6
//	scope_y_offset = 24

/obj/item/gun/ballistic/revolver/m29/alt
	item_state = "44magnum"
	icon_state = "mysterious_m29"
//	can_scope = FALSE

/obj/item/gun/ballistic/revolver/m29/coltwalker
	name = "Colt Walker 1847"
	desc = "A legendary gun of the west. The Colt Walker bears a fearsome reputation for a very good reason, finding itself in the hands of everyone from ancient army officials to outlaws throughout the years. An antique when the bombs dropped, the weapon is now incredibly outdated. Still, that doesn't make it any less lethal."
	item_state = "coltwalker"
	icon_state = "coltwalker"
//	can_scope = FALSE

//Peacekeeper					 Keywords: UNIQUE, .44, Double action, 6 rounds cylinder, Extra Firemode
/obj/item/gun/ballistic/revolver/m29/peacekeeper
	name = "Peacekeeper"
	desc = "Even desert roses have thorns. This .44 revolver has been modified with a special hammer mechanism, allowing for slow, powerful shots, or fanning the hammer for a flurry of more inaccurate shots."
	item_state = "m29peace"
	icon_state = "m29peace"
//	extra_damage = 15
//	extra_penetration = 0.1
	fire_delay = 10
	burst_size = 1
	actions_types = list(/datum/action/item_action/toggle_firemode)
//	can_scope = FALSE

/*
/obj/item/gun/ballistic/revolver/m29/peacekeeper/ui_action_click()
	burst_select()

/obj/item/gun/ballistic/revolver/m29/peacekeeper/proc/burst_select()
	var/mob/living/carbon/human/user = usr
	switch(select)
		if(0)
			select += 1
			burst_size = 3 //fan the hammer
			spread = 15
//			extra_damage = 0
//			extra_penetration = 0
			fire_delay = 1
			to_chat(user, span_notice("You prepare to fan the hammer for a rapid burst of shots."))
		if(1)
			select = 0
			burst_size = 1
			spread = 0
//			extra_damage = 15
//			extra_penetration = 0.1
			to_chat(user, span_notice("You switch to single-shot fire."))
	update_icon()
*/

//.44 Snubnose						Keywords: .44, Double action, 6 rounds cylinder, Short barrel
/obj/item/gun/ballistic/revolver/m29/snub
	name = "snubnose .44 magnum revolver"
	desc = "A snubnose variant of the common place .44 magnum. An excellent holdout weapon for self defense."
	icon_state = "m29_snub"
	w_class = WEIGHT_CLASS_SMALL
	weapon_weight = WEAPON_LIGHT
//	extra_damage = -2 //Smaller barrel thus lower bullet velocity
	spread = 3

//.44 Ranger Revolver - Sprites by Pisshole
/obj/item/gun/ballistic/revolver/m29/ranger
	name = "Shorty .44"
	desc = "Noticing a short-barreled .44 on a ranger's hip might mean death will come 10 seconds more. A quality revolver like this makes up for its difference in size."
	icon_state = "ranger44_alt"
	obj_flags = UNIQUE_RENAME
	unique_reskin = list("Classic" = "44colt",
						"Shorty .44" = "ranger44_alt",
						"True Shorty .44" = "ranger44"
						)

//////////////////////
// .45-70 REVOLVERS //
//////////////////////

/obj/item/gun/ballistic/revolver/sequoia
	name = "ranger sequoia"
	desc = "This large, double-action revolver is a rare, scopeless variant of the hunting revolver. It is used exclusively by the New California Republic Rangers. This revolver features a dark finish with intricate engravings etched all around the weapon. Engraved along the barrel are the words 'For Honorable Service,' and 'Against All Tyrants.' The hand grip bears the symbol of the NCR Rangers, a bear, and a brass plate attached to the bottom that reads '20 Years.' "
	icon_state = "sequoia"
	item_state = "sequoia"
	weapon_weight = WEAPON_MEDIUM
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev4570
	fire_sound = 'sound/f13weapons/sequoia.ogg'
	recoil = 0.1

/obj/item/gun/ballistic/revolver/sequoia/bayonet
	name = "bayoneted ranger sequoia"
	desc = "This large, double-action revolver is a rare, scopeless variant of the hunting revolver. It is used exclusively by the New California Republic Rangers. This revolver features a dark finish with intricate engravings etched all around the weapon. Engraved along the barrel are the words 'For Honorable Service,' and 'Against All Tyrants.' The hand grip bears the symbol of the NCR Rangers, a bear, and a brass plate attached to the bottom that reads '20 Years.' This one has a bayonet on it."
	icon_state = "sequoia_b"
	item_state = "sequoia"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev4570
	fire_sound = 'sound/f13weapons/sequoia.ogg'
	force = 25

/obj/item/gun/ballistic/revolver/hunting
	name = "hunting revolver"
	desc = "A scoped double action revolver chambered in 45-70."
	icon_state = "hunting_revolver"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev4570
	fire_sound = 'sound/f13weapons/sequoia.ogg'
	weapon_weight = WEAPON_MEDIUM
	recoil = 0.1
//	can_scope = TRUE
//	scope_state = "revolver_scope"
//	scope_x_offset = 9
//	scope_y_offset = 20


//////////////////////
// .223 REVOLVER    //
//////////////////////

/obj/item/gun/ballistic/revolver/thatgun
	name = ".223 pistol"
	desc = "A 556 rifle modified and cut down to a pistol."
	icon_state = "thatgun"
	fire_sound = 'sound/f13weapons/magnum_fire.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/thatgun
//	extra_damage = 7


//////////////////////
// SHOTGUN REVOLVER //
//////////////////////

/obj/item/gun/ballistic/revolver/shotgunrevolver
	name = "revolver shotgun"
	desc = "A large revolver that fires shotgun shells."
	icon_state = "judge"
	item_state = "gun"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/shotgunrevolver
	fire_sound = 'sound/f13weapons/caravan_shotgun.ogg'
	fire_delay = 3.5
	weapon_weight = WEAPON_MEDIUM
	spread = 40

/////////////////////////////
//   IMPROVISED GUNS	   //
/////////////////////////////

//Zipgun					Keywords: IMPROVISED, 9mm, mag-loaded
/obj/item/gun/ballistic/revolver/zipgun
	name = "zipgun"
	desc = "A crudely-made 9mm pistol. You're not sure this thing is reliable."
	icon_state = "zipgun"
	item_state = "gun"
	fire_sound = 'sound/weapons/Gunshot.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/improvised9mm
	spread = 20

//Pipe Rifle				Keywords: IMPROVISED, 10mm, interal loader, single-shot
/obj/item/gun/ballistic/revolver/pipe_rifle
	name = "pipe rifle"
	desc = "A crudely-made 10mm rifle. It's not very accurate."
	icon_state = "pipe_rifle"
	item_state = "improvshotgun"
	fire_sound = 'sound/weapons/Gunshot.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/improvised10mm
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	spread = 15

/obj/item/gun/ballistic/revolver/pipe_rifle/attackby(obj/item/A, mob/user, params)
	..()
	if(A.tool_behaviour == TOOL_SAW || istype(A, /obj/item/gun/energy/plasmacutter))
		sawoff(user)
