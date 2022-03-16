/obj/item/shrapnel/nail // ghetto frag grenades // Come on its a nail that thing wouldn't have hard time sticking into you
	name = "nail"
	embedding = list(embed_chance=85, ignore_throwspeed_threshold=TRUE, fall_chance=4, embed_chance_turf_mod=-100)
	custom_materials = list(/datum/material/iron=50)
	armour_penetration = -0.6
	icon = 'icons/obj/shards.dmi'
	icon_state = "large"
	w_class = WEIGHT_CLASS_TINY
	item_flags = DROPDEL
	sharpness = SHARP_EDGED

/obj/item/projectile/bullet/shrapnel/nail //Pipebomb
	name = "flying nail"
	damage = 10
	range = 15
	armour_penetration = 0.1
	dismemberment = 0
	ricochets_max = 1
	ricochet_chance = 50
	shrapnel_type = /obj/item/shrapnel/nail
	ricochet_incidence_leeway = 20
	sharpness = SHARP_EDGED
	wound_bonus = 80

/obj/item/projectile/bullet/shrapnel/plasma // plasma grenades
	name = "plasma split"
	embedding = list(embed_chance=0, ignore_throwspeed_threshold=FALSE, fall_chance=0, embed_chance_turf_mod=0)
	custom_materials = list(/datum/material/iron=50)
	damage = 35
	armour_penetration = 0.8
	range = 30
	dismemberment = 0
	ricochets_max = 0
	ricochet_chance = 0
	shrapnel_type = /obj/item/shrapnel
	ricochet_incidence_leeway = 0
	sharpness = SHARP_EDGED
	wound_bonus = 20
	icon = 'icons/obj/projectiles.dmi'
	icon_state = "plasma1"
	sharpness = SHARP_NONE
