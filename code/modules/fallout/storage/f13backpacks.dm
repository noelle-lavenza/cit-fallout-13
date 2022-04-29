/obj/item/storage/backpack/spearquiver
	name = "sturdy quiver"
	desc = "A leather and iron quiver designed to hold throwing spears and bolas."
	icon_state = "spearquiver"
	item_state = "spearquiver"
	slot_flags = ITEM_SLOT_BACK|ITEM_SLOT_BELT

/obj/item/storage/backpack/spearquiver/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 7
	STR.can_hold = typecacheof(list(/obj/item/throwing_star/spear, /obj/item/restraints/legcuffs/bola))

/obj/item/storage/backpack/spearquiver/PopulateContents()
	new /obj/item/throwing_star/spear(src)
	new /obj/item/throwing_star/spear(src)
	new /obj/item/throwing_star/spear(src)
	new /obj/item/throwing_star/spear(src)
	new /obj/item/throwing_star/spear(src)
	new /obj/item/throwing_star/spear(src)
	new /obj/item/throwing_star/spear(src)

/obj/item/storage/backpack/spearquiver/AltClick(mob/living/carbon/user)
	. = ..()
	if(!istype(user) || !user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	if(!length(user.get_empty_held_indexes()))
		to_chat(user, span_warning("Your hands are full!"))
		return
	var/obj/item/throwing_star/L = locate() in contents
	if(L)
		SEND_SIGNAL(src, COMSIG_TRY_STORAGE_TAKE, L, user)
		user.put_in_hands(L)
		to_chat(user, span_notice("You take a spear out of the quiver."))
		return TRUE
	var/obj/item/restraints/legcuffs/W = locate() in contents
	if(W && contents.len > 0)
		SEND_SIGNAL(src, COMSIG_TRY_STORAGE_TAKE, W, user)
		user.put_in_hands(W)
		to_chat(user, span_notice("You take a bola out of the quiver."))
	else
		to_chat(user, span_notice("There is nothing left in the quiver."))
	return TRUE
