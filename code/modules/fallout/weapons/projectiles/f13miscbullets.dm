/obj/item/projectile/bullet/F13
	name = "bullet"
//Bullets library
/obj/item/projectile/bullet/F13/spear
	damage = 40
	icon_state = "spear"
	icon = 'icons/fallout/objects/guns/projectiles.dmi'

//other

/obj/item/projectile/bullet/F13/c38mmBullet
	damage = 4

/obj/item/projectile/bullet/F13/bbBullet
	damage = 9

/obj/item/projectile/bullet/F13/musketball
	damage = 60
	armour_penetration = 0.3

/obj/item/projectile/incendiary/flamethrower
	name = "FIREEEEEEEEEE!!!!!"
	icon = 'icons/effects/fire.dmi'
	icon_state = "3"
	light_range = LIGHT_RANGE_FIRE
	light_color = LIGHT_COLOR_FIRE
	damage_type = BURN
	damage = 10 //slight damage on impact
	range = 4

/obj/item/projectile/incendiary/flamethrower/incinerator
	name = "Fire!"
	icon = 'icons/effects/fire.dmi'
	icon_state = "3"
	light_range = LIGHT_RANGE_FIRE
	light_color = LIGHT_COLOR_FIRE
	damage_type = BURN
	damage = 15
	range = 8

/obj/item/projectile/incendiary/flamethrower/on_hit(atom/target)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(4) //slightly stronger then a molotov, if you stand infront of this for a really long time they will eventually just cook you
		M.IgniteMob()

/obj/item/projectile/bullet/pellet/magnum_buckshot
	name = "magnum buckshot pellet"
	damage = 11
	armour_penetration = 0.1
	wound_bonus = 10
	bare_wound_bonus = 10

//Needler						Keywords: Needler, Double action, 10 rounds internal
/obj/item/gun/ballistic/revolver/needler
	name = "needler pistol"
	desc = "You suspect this Bringham needler pistol was once used in scientific field studies. It uses small hard-plastic hypodermic darts as ammo. "
	icon_state = "needler"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/revneedler
	fire_sound = 'sound/weapons/gunshot_silenced.ogg'
	w_class = WEIGHT_CLASS_SMALL


/obj/item/gun/ballistic/revolver/needler/ultra
	name = "Ultracite needler"
	desc = "An ultracite-enhanced needler pistol."
	icon_state = "ultraneedler"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/revneedler
	fire_sound = 'sound/weapons/gunshot_silenced.ogg'
	w_class = WEIGHT_CLASS_SMALL
