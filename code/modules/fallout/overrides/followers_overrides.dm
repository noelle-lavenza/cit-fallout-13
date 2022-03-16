/obj/item/card/id/silver/followers
	name = "\improper Followers assistant identification card"
	desc = "A silver ID card that gives access to the Followers clinic."
	access = list(ACCESS_FOLLOWER)
	assignment = "Followers Assistant"

/obj/item/card/id/silver/followers/attack_self(mob/user)
	if(isliving(user))
		var/mob/living/living_user = user
		if(alert(user, "Action", "Write Name", "Cancel") == "Write Name")
			registered_name = living_user.real_name
			update_label()
			to_chat(user, span_notice("You successfully write your name on the ID card."))
			return
	..()

/obj/item/circuitboard/computer/rdconsole/followers
	name = "R&D Console (Computer Board)"
	build_path = /obj/machinery/computer/rdconsole/core/followers


/obj/machinery/computer/rdconsole/core/followers
	circuit = /obj/item/circuitboard/computer/rdconsole/followers

/obj/machinery/computer/rdconsole/core/followers/Initialize()
	. = ..()
	stored_research = SSresearch.followers_tech
	stored_research.consoles_accessing[src] = TRUE
	matching_design_ids = list()
	SyncRDevices()
