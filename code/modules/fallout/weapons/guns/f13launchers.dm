/obj/item/gun/ballistic/automatic/tribalbow
	name = "Wayfarer bow"
	desc = "A simple wooden short bow with small pieces of turquiose and etched with symbols of the Wayfarer tribe."
	icon_state = "tribalbow"
	item_state = "tribalbow"
	w_class = WEIGHT_CLASS_NORMAL
	force = 10
	can_suppress = FALSE
	// mag_type = /obj/item/ammo_box/magazine/internal/tribalbow
	fire_sound = 'sound/weapons/grenadelaunch.ogg'
	burst_size = 1
	fire_delay = 0.5
	select = 0
	actions_types = list()
	casing_ejector = FALSE
	// isbow = TRUE

/obj/item/gun/ballistic/automatic/tribalbow/update_icon()
	return

/obj/item/gun/ballistic/automatic/tribalbow/attack_self()
	return

/obj/item/gun/ballistic/automatic/tribalbow/attackby(obj/item/A, mob/user, params)
	var/num_loaded = magazine.attackby(A, user, params, 1)
	if(num_loaded)
		to_chat(user, span_notice("You load [num_loaded] arrow\s into \the [src]."))
		update_icon()
		chamber_round()

//Bone Bow
/obj/item/gun/ballistic/automatic/bonebow
	name = "deathclaw bow"
	desc = "A bone bow, made of pieces of sinew and deathclaw skin for extra structure, it is a fierce weapon that all expert hunters and bowmen carry, allowing for ease of firing many arrows."
	icon_state = "ashenbow_unloaded"
	item_state = "ashenbow"
	w_class = WEIGHT_CLASS_BULKY
	force = 20
	can_suppress = FALSE
	// mag_type = /obj/item/ammo_box/magazine/internal/bonebow
	fire_sound = 'sound/weapons/grenadelaunch.ogg'
	burst_size = 1
	fire_delay = 2
	select = 0
	// extra_speed = 100
	actions_types = list()
	casing_ejector = FALSE
	// isbow = TRUE

/obj/item/gun/ballistic/automatic/bonebow/update_icon()
	return

/obj/item/gun/ballistic/automatic/bonebow/attack_self()
	return

/obj/item/gun/ballistic/automatic/bonebow/attackby(obj/item/A, mob/user, params)
	var/num_loaded = magazine.attackby(A, user, params, 1)
	if(num_loaded)
		to_chat(user, span_notice("You load [num_loaded] arrow\s into \the [src]."))
		update_icon()
		chamber_round()

//Sturdy Bow
/obj/item/gun/ballistic/automatic/sturdybow
	name = "sturdy bow"
	desc = "A firm sturdy wooden bow with leather handles and sinew wrapping, for extra stopping power in the shot speed of the arrows."
	icon_state = "bow_unloaded"
	item_state = "bow"
	w_class = WEIGHT_CLASS_NORMAL
	force = 15
	can_suppress = FALSE
	// mag_type = /obj/item/ammo_box/magazine/internal/sturdybow
	fire_sound = 'sound/weapons/grenadelaunch.ogg'
	burst_size = 1
	fire_delay = 1
	select = 0
	// extra_speed = 300
	actions_types = list()
	casing_ejector = FALSE
	// isbow = TRUE

/obj/item/gun/ballistic/automatic/sturdybow/update_icon()
	return

/obj/item/gun/ballistic/automatic/sturdybow/attack_self()
	return

/obj/item/gun/ballistic/automatic/sturdybow/attackby(obj/item/A, mob/user, params)
	var/num_loaded = magazine.attackby(A, user, params, 1)
	if(num_loaded)
		to_chat(user, span_notice("You load [num_loaded] arrow\s into \the [src]."))
		update_icon()
		chamber_round()

//Silver Bow
/obj/item/gun/ballistic/automatic/silverbow
	name = "silver bow"
	desc = "A firm sturdy silver bow created by the earth, its durability and rather strong material allow it to be an excellent option for those looking for the ability to fire more arrows than normally."
	icon_state = "pipebow_unloaded"
	item_state = "pipebow"
	w_class = WEIGHT_CLASS_BULKY
	force = 15
	can_suppress = FALSE
	// mag_type = /obj/item/ammo_box/magazine/internal/silverbow
	fire_sound = 'sound/weapons/grenadelaunch.ogg'
	burst_size = 1
	fire_delay = 1.5
	select = 0
	actions_types = list()
	casing_ejector = FALSE
	// isbow = TRUE

/obj/item/gun/ballistic/automatic/silverbow/update_icon()
	return

/obj/item/gun/ballistic/automatic/silverbow/attack_self()
	return

/obj/item/gun/ballistic/automatic/silverbow/attackby(obj/item/A, mob/user, params)
	var/num_loaded = magazine.attackby(A, user, params, 1)
	if(num_loaded)
		to_chat(user, span_notice("You load [num_loaded] arrow\s into \the [src]."))
		update_icon()
		chamber_round()

//Crossbow
/obj/item/gun/ballistic/automatic/crossbow
	name = "crossbow"
	desc = "A crossbow."
	icon_state = "crossbow"
	item_state = "crossbow"
	w_class = WEIGHT_CLASS_NORMAL
	force = 10
	can_suppress = FALSE
	// mag_type = /obj/item/ammo_box/magazine/internal/crossbow
	fire_sound = 'sound/weapons/grenadelaunch.ogg'
	burst_size = 1
	fire_delay = 1.5
	select = 0
	// extra_speed = 400
	actions_types = list()
	casing_ejector = FALSE
	// isbow = TRUE
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	// can_scope = FALSE

/obj/item/gun/ballistic/automatic/crossbow/update_icon()
	return

/obj/item/gun/ballistic/automatic/crossbow/attack_self()
	return

/obj/item/gun/ballistic/automatic/crossbow/attackby(obj/item/A, mob/user, params)
	var/num_loaded = magazine.attackby(A, user, params, 1)
	if(num_loaded)
		to_chat(user, span_notice("You load [num_loaded] arrow\s into \the [src]."))
		update_icon()
		chamber_round()
