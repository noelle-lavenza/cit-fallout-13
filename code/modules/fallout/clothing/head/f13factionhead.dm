/*PARENT ITEMS FOR REFERENCE PURPOSES. DO NOT UNCOMMENT
/obj/item/clothing/head
	name = BODY_ZONE_HEAD
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "top_hat"
	item_state = "that"
	body_parts_covered = HEAD
	slot_flags = ITEM_SLOT_HEAD
	var/blockTracking = 0 //For AI tracking
	var/can_toggle = null
	dynamic_hair_suffix = "+generic"
	var/datum/beepsky_fashion/beepsky_fashion //the associated datum for applying this to a secbot
	var/list/speechspan = null
	armor = list("tier" = 1)

/obj/item/clothing/head/Initialize()
	. = ..()
	if(ishuman(loc) && dynamic_hair_suffix)
		var/mob/living/carbon/human/H = loc
		H.update_hair()

/obj/item/clothing/head/get_head_speechspans(mob/living/carbon/user)
	if(speechspan)
		return speechspan
	else
		return

/obj/item/clothing/head/helmet
	name = "helmet"
	desc = "Standard Security gear. Protects the head from impacts."
	icon_state = "helmet"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	flags_inv = HIDEEARS
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_TEMP_PROTECT
	strip_delay = 60
	resistance_flags = NONE
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEHAIR

	dog_fashion = /datum/dog_fashion/head/helmet

/obj/item/clothing/head/helmet/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_HEAD))*/

//Raider
/obj/item/clothing/head/helmet/f13/raider
	name = "base raider helmet"
	desc = "for testing"
	icon_state = "supafly"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/raider/supafly
	name = "supa-fly raider helmet"
	desc = "(IV) It's a makeshift raider helmet, made of leather. It heavily smells with chems and sweat."
	icon_state = "supafly"

/obj/item/clothing/head/helmet/f13/raider/arclight
	name = "raider arclight helmet"
	desc = "(IV) An intimidating visor, however its eye protection qualities are compromised."
	icon_state = "arclight"
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE

/obj/item/clothing/head/helmet/f13/raider/blastmaster
	name = "raider blastmaster helmet"
	desc = "(IV) A sturdy helmet to protect against both the elements and from harm, if only it was not looking in such poor condition."
	icon_state = "blastmaster"
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/f13/raider/yankee
	name = "yankee raider helmet"
	desc = "(IV) Long time ago, it has belonged to a football player, now it belongs to wasteland."
	icon_state = "yankee"
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE

/obj/item/clothing/head/helmet/f13/raider/eyebot
	name = "eyebot helmet"
	desc = "(IV) It is a dismantled eyebot, hollowed out to accommodate for a humanoid head."
	icon_state = "eyebot"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 50
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/f13/raider/eyebot/assaultron
	name = "assaultron helmet"
	desc = "(V) This is a dismantled Assaultron head, the central plates pulled apart and all internals ripped out."
	icon_state = "assaultron_helmet"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 55, "bomb" = 30, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)

/obj/item/clothing/head/helmet/f13/raider/eyebot/sentry
	name = "sentry bot helmet"
	desc = "(VI) This is a dismantled Sentry Bot head, the internals ripped out and the optic sensors stripped out, replaced with a torch."
	icon_state = "sentry_helmet"
	item_state = "sentryhelmet"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 55, "bomb" = 30, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)

/obj/item/clothing/head/helmet/f13/raider/eyebot/sentry/attack_self(mob/user)
	weldingvisortoggle(user)

/obj/item/clothing/head/helmet/f13/raider/psychotic
	name = "psycho-tic raider helmet"
	desc = "(IV) A leather skullcap with tufts of hair sticking from each side."
	icon_state = "psychotic"
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR

/obj/item/clothing/head/helmet/f13/fiend
	name = "fiend helmet"
	desc = "(IV) A leather cap cobbled together adorned with a bighorner skull, perfect for any drug-fueled frenzy."
	icon_state = "fiend"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 10, "bomb" = 16, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/helmet/f13/fiend_reinforced
	name = "reinforced fiend helmet"
	desc = "(V) A leather cap cobbled together adorned with a bighorner skull, perfect for any drug-fueled frenzy. This helmet has been reinforced with metal plates under its skull."
	icon_state = "fiend"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "laser" = 20, "energy" = 10, "bomb" = 16, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/helmet/f13/raidermetal
	name = "raider metal helmet"
	desc = "(V) A metal helmet, rusty and awful."
	icon_state = "raidermetal"
	can_toggle = TRUE
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 20, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	strip_delay = 80
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/head/helmet/f13/raidercombathelmet
	name = "raider combat helmet"
	desc = "(V) A combat helmet modified with metal plating."
	icon_state = "raider_combat_helmet"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 35, "bomb" = 70, "bio" = 70, "rad" = 70, "fire" = 65, "acid" = 30)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/raider/templar
	name = "raider knight helmet"
	desc = "(IV) A horned helmet made out of what looks like hardened leather and scraps of metal."
	icon_state = "templar"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 10, "bomb" = 16, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

//Legion

//NCR

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/eliteriot
	name = "elite riot gear helmet"
	desc = "(VII) An old combat helmet seen in the divide, repurposed for higher ranking Rangers."
	icon_state = "elite_riot"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 60, "bomb" = 55, "bio" = 60, "rad" = 60, "fire" = 40, "acid" = 0)

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert
	name = "desert ranger combat helmet"
	desc = "(VII) A U.S. Marine Corps riot helmet, used by the legendary Desert Rangers."
	icon_state = "desert_ranger"

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/marine
	name = "marine riot helmet"
	desc = "(VII) A U.S. Marine Corps riot helmet in almost impeccable condition."
	icon_state = "xray_riot"

/obj/item/clothing/head/helmet/f13/rangercombat/eliteriot/reclaimed
	name = "reclaimed desert ranger gear"
	desc = "(IV) A refurbished and personalized set of pre-unification desert ranger gear."
	icon_state = "desert_ranger"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 30, "bomb" = 30, "bio" = 30, "rad" = 30, "fire" = 30, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

//Oasis/Town

/obj/item/clothing/head/f13/town
	name = "town tricorn"
	desc = "(III) Why are there tricorns in the desert again?"
	icon_state = "tricorn"
	item_state = "dethat"
	flags_inv = HIDEHAIR
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 30, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/town/mayor
	name = "mayoral tricorn"
	desc = "(IV) A tricorn in the desert.  Stranger things have happened."
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 35, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/town/big
	name = "big hat"
	desc = "(III) It's a big hat."
	icon_state = "bigcowboyhat"

/obj/item/clothing/head/f13/town/deputy
	name = "deputy hat"
	desc = "(V) A black cowboy hat."
	icon_state = "deputyhat"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 35, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/town/sheriff
	name = "sheriff hat"
	desc = "(VI) A black cowboy hat with a snakeskin band."
	icon_state = "sheriffhat"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 40, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/det_hat_alt
	name = "detective's fedora"
	desc = "(III) There's only one man who can sniff out the dirty stench of crime, and he's likely wearing this black hat."
	icon_state = "detectivealt"
	item_state = "fedora"
	flags_inv = HIDEHAIR
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 10, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

//KHAAAAN
/obj/item/clothing/head/helmet/f13/khan
	name = "Great Khan helmet"
	desc = "(IV) A piece of headwear commonly worn by the Great Khans that appears to resemble stereotypical traditional Mongolian helmets - likely adapted from a pre-War motorcycle helmet.<br>It is black with two horns on either side and a small spike jutting from the top, much like a pickelhaube.<br>A leather covering protects the wearer's neck and ears from sunburn."
	icon_state = "khan"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 20, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	flags_inv = HIDEEARS|HIDEHAIR
	strip_delay = 20

/obj/item/clothing/head/helmet/f13/khan/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)


//Wayfarer
/obj/item/clothing/head/helmet/f13/deathskull
	name = "eerie helm"
	desc = "(II) A helmet fastened from the skull of a deer. Something about it doesn't look right."
	icon_state = "shamskull"
	armor = list("melee" = 15, "bullet" = 15, "laser" = 15, "energy" = 20, "bomb" = 30, "bio" = 20, "rad" = 10, "fire" = 10, "acid" = 0)

/obj/item/clothing/head/f13/helmet/wayfarer

/obj/item/clothing/head/helmet/f13/wayfarer/hunter
	name = "hunter headdress"
	desc = "(V) Azure decorations dangle from the sturdy cap, it is sung that the wearers of these are watched over by the spirits."
	icon_state = "hunterhelm"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 20, "bomb" = 30, "bio" = 20, "rad" = 10, "fire" = 10, "acid" = 0)

/obj/item/clothing/head/hooded/f13/cloakhood/hhunter
	name = "razorclaw helm"
	icon_state = "rchelmet"
	desc = "(VI) The skull of a legendary deathclaw."
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 20, "bomb" = 50, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	heat_protection = HEAD
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/head/helmet/f13/wayfarer/antler
	name = "antler skullcap"
	desc = "(III) An antler skull headdress traditionally worn by the spiritually inclined."
	icon_state = "antlerhelm"
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 0, "bomb" = 20, "bio" = 70, "rad" = 10, "fire" = 20, "acid" = 0)

/obj/item/clothing/head/helmet/f13/wayfarer/shamanblue
	name = "ritual headdress"
	desc = "(IV) An ancient mask fashioned at the coasts of the Great Salt Water, imbued with the ancestral blessing through a long forgotten ritual."
	icon_state = "shamanblue"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 20, "bomb" = 20, "bio" = 70, "rad" = 10, "fire" = 20, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/wayfarer/shamanred
	name = "crimson mask"
	desc = "(IV) An uncanny helm passed down through generations, originating from a tribal culture once situated at the top of a Sonoran mesa."
	icon_state = "shamanred"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 20, "bomb" = 20, "bio" = 70, "rad" = 10, "fire" = 20, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/wayfarer/chief
	name = "helm of the steady walk"
	desc = "(VII) A chief who chooses this protectron mantle embodies the defensive, a stalwart heart that protects their village above all other goals, even if it means hampering the growth of the village to do it."
	icon_state = "chiefblue"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 40, "bomb" = 39, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)
	actions_types = list(/datum/action/item_action/toggle)
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR


/obj/item/clothing/head/helmet/f13/wayfarer/chief/attack_self(mob/user)
	weldingvisortoggle(user)

/obj/item/clothing/head/helmet/f13/wayfarer/chief/red
	name = "helm of the piercing gaze"
	desc = "(VII) A chief who wears this assaultron helm is known for their prowess in battle, aggressiveness, intimidation and raw power in command. They are bold and strong."
	icon_state = "chiefred"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 40, "bomb" = 39, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/helmet/f13/wayfarer/chief/green
	name = "helm of the helping hand"
	desc = "(VII) The many eyed helper to the village and all, the Chief that chooses this Mr. Handy based mantle is clever and kind in equal measure, they embody industry and diplomacy. Though they aren't defensive, they are surgically precise in eliminating those who oppose them."
	icon_state = "chiefgreen"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 40, "bomb" = 39, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/helmet/f13/nightstalkerheavyhelmet
	name = "Nightstalker Heavy Helmet"
	icon_state = "nightstalker_tribal_helmet"
	desc = "(VI) A heavily repurposed set of combat armor now intermixed with both scavenged metal-lined pauldrons and stripped Nightstalker skin draped beneath. This helmet seems to have a bit of a plume of feathers on the armor."
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 20, "bomb" = 50, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

//Followers

//Vault

/obj/item/clothing/head/helmet/riot/f13/vaultsec
	name = "security helmet"
	desc = "(V) A standard issue vault security helmet, pretty robust."
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 5, "bomb" = 5, "bio" = 2, "rad" = 0, "fire" = 50, "acid" = 50)

/obj/item/clothing/head/helmet/riot/f13/vaultsec/vc
	name = "VTCC riot helmet"
	desc = "(V) A riot helmet adapted from the design of most pre-war riot helmets, painted blue."
	icon_state = "vtcc_riot_helmet"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 35, "bomb" = 35, "bio" = 40, "rad" = 10, "fire" = 60, "acid" = 10)
	can_toggle = null

/obj/item/clothing/head/helmet/riot/f13/vaultsec/vc/scout
	name = "VTCC scout helmet"
	desc = "(IV) A riot helmet adapted from the design of most pre-war riot helmets, painted blue."
	icon_state = "vtcc_riot_helmet"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 30, "bomb" = 25, "bio" = 40, "rad" = 10, "fire" = 40, "acid" = 10)

/obj/item/clothing/head/helmet/riot/f13/vaultsec/vc/marshal
	name = "VTCC marshal cap"
	desc = "(VII) A peaked dark blue cap, probably worn by someone important."
	icon_state = "hopcap"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 35, "bomb" = 35, "bio" = 40, "rad" = 10, "fire" = 60, "acid" = 10)

/obj/item/clothing/head/helmet/riot/f13/vaultsec/vc/heavy
	name = "VTCC heavy riot helmet"
	desc = "(VI) A heavy riot helmet adapted from the design of most pre-war riot helmets, painted black."
	icon_state = "vtcc_heavy_riot_helmet"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 40, "bomb" = 30, "bio" = 40, "rad" = 10, "fire" = 60, "acid" = 30)

/obj/item/clothing/head/helmet/riot/f13/vaultsec/vc/provost
	name = "VTCC Provost riot helmet"
	desc = "(VI) A heavy riot helmet adapted from the design of most pre-war riot helmets, with a black visor."
	icon_state = "vtcc_provost_riot_helmet"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 20, "bomb" = 40, "bio" = 30, "rad" = 10, "fire" = 60, "acid" = 30)

/obj/item/clothing/head/helmet/riot/f13/vaultsec/vc/marshal/provost
	name = "VTCC Provost Marshal cap"
	icon_state = "vtcc_provost_marshal_cap"

/obj/item/clothing/head/helmet/riot/f13/vaultsec/vc/marshal/provost/helmet
	name = "VTCC Marshal riot helmet"
	desc = "(VI) A heavy riot helmet adapted from the design of most pre-war riot helmets, with a black visor and a yellow stripe."
	icon_state = "vtcc_marshal_riot_helmet"

//THE GRAVEYARD
//UNUSED or LEGACY - RETAINED IN CASE DESIRED FOR ADMIN SPAWN OR REIMPLEMENATION. MAY NOT BE EVERYTHING THAT'S UNUSED. TEST BEFORE USING
//IF PUT BACK INTO USE, PLEASE FILE IT BACK SOMEWHERE ABOVE

/obj/item/clothing/head/f13/ncr/old
	name = "NCR pith helmet"
	desc = "(V) An obsolete issue of the NCR standard issue helmet."
	icon_state = "ncr_infantry_helmet"

/obj/item/clothing/head/f13/ncr/medic
	name = "NCR medical helmet"
	desc = "(V) A standard issue NCR Infantry helmet, colored to suit a medical officer."
	icon_state = "ncr_medical_helmet"

/obj/item/clothing/head/f13/ncr/mp
	name = "NCR military police helmet"
	desc = "(V) A standard issue NCR helmet, with the letters \"MP\" scrawled on the front."
	icon_state = "ncr_MP"

/obj/item/clothing/head/helmet/f13/khan/fullhelm
	name = "Great Khan full helmet"
	desc = "(V) A Khan helmet modified with steel horns and a full guard comprised of red sunglass lenses and a thick metal plate to conceal the lower face."
	icon_state = "khanhelmet"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 20, "bomb" = 15, "bio" = 0, "rad" = 10, "fire" = 20, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 20

/obj/item/clothing/head/helmet/f13/khan/fullhelm/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

//Enclave / Remnant
/obj/item/clothing/head/donor/enclave
	name = "enclave forge cap"
	desc = "(III) A resistant, black forage cap issued to Enclave soldiers."
	icon_state = "enclave_cap"
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 20, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0)

/obj/item/clothing/head/helmet/f13/combat/enclave
	name = "enclave combat helmet"
	desc = "(VI) An intimidating helmet that is issued with it's corresponding suit."
	icon_state = "enclave_helmet"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 75, "bomb" = 70, "bio" = 80, "rad" = 80, "fire" = 80, "acid" = 50)

/obj/item/clothing/head/helmet/f13/combat/remnant
	name = "remnant combat helmet"
	desc = "(VI) A dark helmet with yellow lenses, used commonly in espionage or shadow ops."
	icon_state = "remnant_helmet"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 75, "bomb" = 70, "bio" = 80, "rad" = 80, "fire" = 80, "acid" = 50)

/obj/item/clothing/head/soft/f13/enclave
	name = "officer hat"
	desc = "(I) A standard-issue Enclave officer's cap."
	icon_state = "enclave"

/obj/item/clothing/head/helmet/f13/combat/marinecenturion
	name = "marine combat helmet"
	desc = "(VII) An excellent helmet of pre-war U.S.M.C. armor found in rare and limited quantities in the wasteland. This one sports a flagrant waste of golden and red paint, an excess of luxurious plumage, and a pair of polarized lenses. The word PTOLEMY is carelessly inscribed against the interior."
	icon_state = "ptolemaic_helm"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 60, "fire" = 60, "acid" = 50)
	flash_protect = 1
