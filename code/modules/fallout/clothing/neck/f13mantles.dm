//Mantles

/obj/item/clothing/neck/mantle
	name = "mantle template"
	desc = " worn in accessory slot, no concealing hood, decorative."
	icon = 'icons/fallout/clothing/mantles.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothing/mantle.dmi'
	w_class = WEIGHT_CLASS_SMALL
	slot_flags = ITEM_SLOT_NECK
	body_parts_covered = CHEST|ARMS
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = null
	cold_protection = null
	permeability_coefficient = 0.9

/obj/item/clothing/neck/mantle/gecko
	name = "gecko skin mantle"
	desc = "Made from young gecko hides, too thin to be useful for armor. The small claws are still attached."
	icon_state = "gecko"

/obj/item/clothing/neck/mantle/gray
	name = "plain gray mantle"
	desc = "A simple mantle to cover your shoulders with."
	icon_state = "gray"

/obj/item/clothing/neck/mantle/brown
	name = "plain brown mantle"
	desc = "A simple mantle to cover your shoulders with."
	icon_state = "brown"

/obj/item/clothing/neck/mantle/overseer
	name = "vault-tec overseer's mantle"
	desc = "This is the overseer's mantle.  Issued by the Vault-tec corporation to easily identify the overseer. This mantle has been passed down from overseer to overseer."
	icon_state = "overseer"

/obj/item/clothing/neck/mantle/ranger
	name = "NCR ranger cape"
	desc = "Ranger cape made from what looks like old poncho fitted with star, stripes and a bear. Most likely has a holster hidden underneath."
	icon_state = "rangercape"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/bos/paladin

/obj/item/clothing/neck/mantle/chief
	name = "chieftains mantle"
	desc = "A symbol of the authority of the Wayfarer Chief."
	icon_state = "tribechief"

/obj/item/clothing/neck/mantle/jay
	name = "blue silk mantle"
	desc = "A finely woven and blue dyed mantle, with the emblem of a bird on its back."
	icon_state = "jaymantle"

/obj/item/clothing/neck/mantle/commander
	name = "commanders mantle"
	desc = "A fine mantle marking the wearer as a Commander of some long lost nation."
	icon_state = "commander"

/obj/item/clothing/neck/mantle/treasurer
	name = "treasurers mantle"
	desc = "The grey and black mantle with gold thread trimming shows the wearer is entrusted with matters of money and records. Hidden inner pockets can store money, keys and documents safely, and a discrete sheath for a knife for self defence is also attached."
	icon_state = "treasurer"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/treasurer

/obj/item/clothing/neck/mantle/peltfur
	name = "warm fur mantle"
	desc = "A mantle made from bighorner pelts."
	icon_state = "peltfur"
	cold_protection = CHEST|GROIN|ARMS
	armor = list("melee" = 5, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/neck/mantle/peltmountain
	name = "fur pelt"
	desc = "A pelt made from a mountain bear, brought in from Colorado."
	icon_state = "peltmountain"
	cold_protection = CHEST|GROIN|ARMS
	armor = list("melee" = 5, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/neck/mantle/ragged
	name = "ragged mantle"
	desc = "A worn and ripped old primitive mantle, made from sinew and bone."
	icon_state = "ragged"

/obj/item/clothing/neck/mantle/poncho
	name = "poncho"
	desc = "Plain and rugged piece of clothing, put it over your suit and make sure your gear don't get soaked through when it rains."
	icon_state = "poncho"
	body_parts_covered = CHEST|GROIN|ARMS

/obj/item/clothing/neck/mantle/poncho/red
	icon_state = "redponcho"

/obj/item/clothing/neck/mantle/alt
	name = "cloak"
	desc = "A ragged up white cloak. It reminds you of a place not far from here."
	icon = 'icons/obj/clothing/cloaks.dmi'
	icon_state = "cloakc"