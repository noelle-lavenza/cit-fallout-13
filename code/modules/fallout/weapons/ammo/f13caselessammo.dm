/obj/item/ammo_casing/caseless/g11
	name = "4.73mm caseless cartridge"
	desc = "An 4.73 self-contained caseless rifle cartridge."
	caliber = "473mm"
	icon_state = "762-casing"
	projectile_type = /obj/item/projectile/bullet/a473

/obj/item/ammo_casing/caseless/needle
	name = "needler round"
	desc = "A dart for use in needler pistols."
	icon_state = "needler-casing"
	caliber = "needle"
	projectile_type = /obj/item/projectile/bullet/needle
	var/reagent_amount = 15
/*
/obj/item/ammo_casing/caseless/needle/Initialize()
	. = ..()
	create_reagents(reagent_amount, OPENCONTAINER)

/obj/item/ammo_casing/caseless/needle/attackby()
	return
*/
/obj/item/ammo_casing/caseless/needle/ap
	name = "needler round"
	desc = "A dart for use in needler pistols."
	icon_state = "apneedler-casing"
	caliber = "needle"
	projectile_type = /obj/item/projectile/bullet/needle/ap

/obj/item/ammo_casing/caseless/needle/ultra
	name = "ultracite needler round"
	desc = "A dart for use in needler pistols."
	caliber = "ultraneedle"
	projectile_type = /obj/item/projectile/bullet/needle/ultra

/obj/item/ammo_casing/caseless/musketball
	name = "musketball"
	desc = "This is a lead ball for a musket."
	caliber = "musketball"
	projectile_type = /obj/item/projectile/bullet/F13/musketball

/obj/item/ammo_casing/caseless/lasermusket
	name = "laser musket battery"
	desc = "A single-use battery for the laser musket."
	caliber = "lasmusket"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "lasmusketbat"
	projectile_type = /obj/item/projectile/beam/laser/musket
	firing_effect_type = /obj/effect/temp_visual/dir_setting/firing_effect/energy

/obj/item/ammo_casing/caseless/plasmacaster
	name = "plasma canister"
	desc = "A single-use chemical canister for the plasma caster."
	caliber = "plasmacaster"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "plasmacan"
	projectile_type = /obj/item/projectile/f13plasma/plasmacaster
	firing_effect_type = /obj/effect/temp_visual/dir_setting/firing_effect/energy

/obj/item/ammo_casing/caseless/flamethrower
	name = "napalm"
	desc = "a bunch of napalm fuel for a flamethrower. A bit useless now that it's been spilt on the ground."
	caliber = "fuel"
	icon = 'icons/mob/robots.dmi'
	icon_state = "floor1"
	projectile_type = /obj/item/projectile/incendiary/flamethrower
	pellets = 3
	variance = 20

/obj/item/ammo_casing/caseless/flamethrower/incinerator
	projectile_type = /obj/item/projectile/incendiary/flamethrower/incinerator
	pellets = 1
	variance = 5
