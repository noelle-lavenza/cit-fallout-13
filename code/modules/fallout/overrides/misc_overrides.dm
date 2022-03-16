/obj/item/circuitboard/computer/vault_control
	name = "Vault Elevator Control (Computer board)"
	build_path = /obj/machinery/computer/shuttle/vaultelevator

/obj/item/circuitboard/computer/bunker_control
	name = "Bunker Elevator Control (Computer board)"
	build_path = /obj/machinery/computer/shuttle/bunkerelevator

/obj/item/circuitboard/computer/northbunker_control
	name = "North Bunker Elevator Control (Computer board)"
	build_path = /obj/machinery/computer/shuttle/northbunkerelevator

/obj/item/circuitboard/computer/mining_control
	name = "Mining Elevator Control (Computer board)"
	build_path = /obj/machinery/computer/shuttle/miningelevator

/obj/item/circuitboard/computer/vault113_control
	name = "Vault 113 Elevator Control (Computer board)"
	build_path = /obj/machinery/computer/shuttle/vault113elevator

/obj/machinery/computer/rdconsole/core/vault
	circuit = /obj/item/circuitboard/computer/rdconsole/vault

/obj/machinery/computer/rdconsole/core/vault/Initialize()
	. = ..()
	stored_research = SSresearch.science_tech //lettern, note about this
	stored_research.consoles_accessing[src] = TRUE
	matching_design_ids = list()
	SyncRDevices()

/obj/item/circuitboard/computer/rdconsole/vault
	name = "R&D Console (Computer Board)"
	build_path = /obj/machinery/computer/rdconsole/core/vault
