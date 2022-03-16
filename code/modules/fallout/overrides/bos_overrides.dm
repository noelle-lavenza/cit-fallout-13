/obj/machinery/computer/security/bos
	name = "brootherhood bunker camera terminal"
	desc = "Used to access the various cameras inside the bunker."
	icon_state = "terminal"
	icon_keyboard = "terminal_key"
	icon_screen = "terminal_on_alt"
	network = list("BoS")
	circuit = /obj/item/circuitboard/computer/bos

/obj/machinery/computer/operating/bos/Initialize()
	. = ..()
	linked_techweb = SSresearch.bos_tech

/obj/item/circuitboard/computer/rdconsole/bos
	name = "R&D Console (Computer Board)"
	build_path = /obj/machinery/computer/rdconsole/core/bos

/obj/item/circuitboard/computer/bos_control
	name = "BoS Elevator Control (Computer board)"
	build_path = /obj/machinery/computer/shuttle/boselevator

/obj/item/circuitboard/computer/bos_entry_control
	name = "BoS Entry Elevator Control (Computer board)"
	build_path = /obj/machinery/computer/shuttle/bosentryelevator

/obj/item/circuitboard/computer/bos
	name = "Brotherhood Monitor (Computer Board)"
	build_path = /obj/machinery/computer/security/bos

/obj/machinery/computer/rdconsole/core/bos
	desc = "A console used by the scribes of the Brotherhood of Steel."
	name = "Archive Terminal"
	circuit = /obj/item/circuitboard/computer/rdconsole/bos
	req_access = null
	req_access_txt = "120"

//lettern's lazy way of adding more channels
/obj/machinery/computer/rdconsole/core/bos/Initialize()
	. = ..()
	stored_research = SSresearch.bos_tech //lettern, note about this
	stored_research.consoles_accessing[src] = TRUE
	matching_design_ids = list()
	SyncRDevices()
