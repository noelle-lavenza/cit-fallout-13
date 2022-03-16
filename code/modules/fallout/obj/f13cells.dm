// FALLOUT POWER CELLS //

/obj/item/stock_parts/cell/ammo
	name = "ammo cell template"
	desc = "Bugreport please."
	icon = 'icons/fallout/objects/powercells.dmi'
	cancharge = 0
	w_class = WEIGHT_CLASS_TINY

/obj/item/stock_parts/cell/ammo/update_icon()
	if(charge > 1)
		name = "[initial(name)]"
	else
		name = "used [initial(name)]"
	. = ..()

/obj/item/stock_parts/cell/ammo/New()
	..()
	return

/obj/item/stock_parts/cell/ammo/mfc
	name = "microfusion cell"
	desc = "A microfusion cell, powerful enough to be used as ammunition for large energy weapons."
	icon_state = "mfc-full"
	maxcharge = 2000

/obj/item/stock_parts/cell/ammo/mfc/update_icon()
	switch(charge)
		if (1251 to 2000)
			icon_state = "mfc-full"
		if (101 to 1250)
			icon_state = "mfc-half"
		if (0 to 100)
			icon_state = "mfc-empty"
	. = ..()

/obj/item/stock_parts/cell/ammo/ultracite
	name = "ultracite cell"
	desc = "An advanced ultracite cell, used as ammunition for special energy weapons."
	icon_state = "ultracite"
	maxcharge = 2000

/obj/item/stock_parts/cell/ammo/ec
	name = "small energy cell"
	desc = "Energy cells are small, self-contained energy storage units often associated with one-handed energy weapons and act essentially as a very powerful battery or capacitor. They are the standard ammunition used by the majority of pistol-sized energy weapons, and as such are widely available across the Mojave Wasteland."
	icon_state = "ec-full"
	maxcharge = 1600

/obj/item/stock_parts/cell/ammo/ec/update_icon()
	switch(charge)
		if (1101 to 1600)
			icon_state = "ec-full"
		if (551 to 1100)
			icon_state = "ec-twothirds"
		if (51 to 550)
			icon_state = "ec-onethirds"
		if (0 to 50)
			icon_state = "ec-empty"
	. = ..()

/obj/item/stock_parts/cell/ammo/ecp
	name = "electron charge pack"
	desc = "A electron charge pack, for rapidly-firing energy weapons."
	icon_state = "ecp-full"
	maxcharge = 2400

/obj/item/stock_parts/cell/ammo/ecp/update_icon()
	switch(charge)
		if (1501 to 2400)
			icon_state = "mfc-full"
		if (101 to 1500)
			icon_state = "mfc-half"
		if (0 to 100)
			icon_state = "mfc-empty"
	. = ..()

/obj/item/stock_parts/cell/ammo/alien
	name = "alien weapon cell"
	desc = "A weapon cell that glows and thrums with unearthly energies. You're not sure you'd be able to recharge it, but it seems very powerful."
	icon_state = "aliencell"
	ratingdesc = FALSE
	maxcharge = 4000
