
//musket
/obj/item/projectile/beam/laser/musket //musket
	name = "laser beam"
	damage = 40
	armour_penetration = 0.5

//plasma caster
/obj/item/projectile/f13plasma/plasmacaster
	name = "plasma bolt"
	icon_state = "plasma_clot"
	damage_type = BURN
	damage = 70
	armour_penetration = 0.6
	flag = "laser"
	eyeblur = 0
	is_reflectable = TRUE
	pixels_per_second = TILES_TO_PIXELS(50)

/obj/item/projectile/beam/laser/lasgun //AER9
	name = "laser beam"
	damage = 33
	armour_penetration = 0.44

/obj/item/projectile/beam/laser/pistol //AEP7
	name = "laser beam"
	damage = 30
	armour_penetration = 0.25

/obj/item/projectile/beam/laser/ultra_pistol
	name = "laser beam"
	damage = 40
	armour_penetration = 0.35
	irradiate = 200

/obj/item/projectile/beam/laser/ultra_rifle
	name = "laser beam"
	damage = 45
	armour_penetration = 0.42
	irradiate = 200

/obj/item/projectile/beam/laser/gatling //Gatling Laser Projectile
	name = "rapid-fire laser beam"
	damage = 12
	armour_penetration = 0.3

/obj/item/projectile/beam/laser/pistol/wattz //Wattz pistol
	damage = 31

/obj/item/projectile/beam/laser/pistol/wattz/magneto //upgraded Wattz
	name = "penetrating laser beam"
	damage = 33
	armour_penetration = 0.20

/obj/item/projectile/beam/laser/solar //Solar Scorcher
	name = "solar scorcher beam"
	damage = 28
	armour_penetration = 0.42

/obj/item/projectile/beam/laser/tribeam //Tribeam laser, fires 3 shots, will melt you
	name = "tribeam laser"
	damage = 21
	armour_penetration = 0.25

/obj/item/projectile/beam/laser/tribeam/baby
	name = "multilas laser"
	damage = 9
	armour_penetration = 0.25

/obj/item/projectile/f13plasma //Plasma rifle
	name = "plasma bolt"
	icon_state = "plasma_clot"
	damage_type = BURN
	damage = 46
	armour_penetration = 0.5
	flag = "laser" //checks vs. energy protection
	eyeblur = 0
	is_reflectable = TRUE
	pixels_per_second = TILES_TO_PIXELS(27)

/obj/item/projectile/plasmacarbine //Plasma carbine
	name = "plasma bolt"
	icon_state = "plasma_clot"
	damage_type = BURN
	damage = 38
	armour_penetration = 0.5
	flag = "laser" //checks vs. energy protection
	eyeblur = 0
	is_reflectable = TRUE
	pixels_per_second = TILES_TO_PIXELS(27)

/obj/item/projectile/f13plasma/repeater //Plasma repeater
	name = "plasma stream"
	icon_state = "plasma_clot"
	damage_type = BURN
	damage = 20
	armour_penetration = 0.25
	flag = "laser" //checks vs. energy protection
	eyeblur = 0
	is_reflectable = FALSE

/obj/item/projectile/f13plasma/pistol //Plasma pistol
	damage = 42
	armour_penetration = 0.35

/obj/item/projectile/f13plasma/pistol/glock //Glock (streamlined plasma pistol)
	damage = 38
	armour_penetration = 0.5

/obj/item/projectile/f13plasma/scatter //Multiplas, fires 3 shots, will melt you
	damage = 24
	armour_penetration = 0.35

/obj/item/projectile/beam/laser/rcw //RCW
	name = "rapidfire beam"
	icon_state = "xray"
	damage = 40
	armour_penetration = 0.25
	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	light_color = LIGHT_COLOR_GREEN

/obj/item/projectile/plasma/alien
	name = "alien projectile"
	icon_state = "ion"
	damage = 90 //horrifyingly powerful, but very limited ammo
	armour_penetration = 0.8

/obj/item/projectile/beam/laser/laer //Elder's/Unique LAER
	name = "advanced laser beam"
	icon_state = "u_laser"
	damage = 45
	armour_penetration = 0.8
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE

/obj/item/projectile/beam/laser/aer14 //AER14
	name = "laser beam"
	damage = 38
	armour_penetration = 0.6
	icon_state = "omnilaser"
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE

/obj/item/projectile/beam/laser/aer12 //AER12
	name = "laser beam"
	damage = 34
	armour_penetration = 0.55
	icon_state = "xray"
	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	light_color = LIGHT_COLOR_GREEN

/obj/item/projectile/beam/laser/wattz2k
	name = "laser bolt"
	damage = 36
	armour_penetration = 0.45

/obj/item/projectile/beam/laser/musket //musket
	name = "laser bolt"
	damage = 40
	armour_penetration = 0.6

/obj/item/projectile/beam/laser/oldpulse //F2 Pulse Rifle Stuff
	name = "pulse rifle beam"
	icon_state = "stunjectile"
	damage = 56
	armour_penetration = 0.8
	impact_effect_type = /obj/effect/temp_visual/impact_effect/yellow_laser
	light_color = LIGHT_COLOR_YELLOW
