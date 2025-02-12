/* * * * * * * * * * * **
 *						*
 *		 Clothing		*
 *						*
 *						*
 * * * * * * * * * * * **/


/*-----------------\
| Crafting Recipes |
\-----------------*/



// =================================================================================
/*---------\
| Clothing |
\---------*/
/obj/item/clothing/suit/roguetown/shirt/robe/bath
	name = "bathrobe"
	desc = "A bathrobe with a luxurious fur interior."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "bathrobe"
	toggle_icon_state = TRUE
	adjustable = CAN_CADJUST
	body_parts_covered = ARM_LEFT|ARM_RIGHT

/obj/item/clothing/suit/roguetown/shirt/robe/bath/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_t"
			flags_inv = null
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_armor()
				H.update_icon()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			flags_inv = HIDEBOOB
			body_parts_covered = ARM_LEFT|ARM_RIGHT|CHEST|GROIN
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_armor()
					H.update_icon()

/obj/item/clothing/suit/roguetown/shirt/robe/eora
	name = "eoran robe"
	desc = "Holy robes, intended for use by followers of Eora"
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "eorarobes"

/obj/item/clothing/suit/roguetown/shirt/robe/eora/alt
	name = "eoran straps"
	desc = "Sanctified, form fitting straps. Used by more radical followers of the Eoran Church"
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "eorastraps"


/obj/item/clothing/suit/roguetown/shirt/robe/malum
	name = "craftsman's robes"
	desc = "The sturdy robes of a maker-monk of Malum."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "malumrobe"
	sleeved = null
	armor = list("melee" = 5, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 5, "acid" = 0) // I just wanted to give Malumite robes a tiny bit of fire protection because they're craftspeople.

/obj/item/clothing/suit/roguetown/shirt/dress/valorian
	name = "valorian dress"
	desc = "A simple deep-blue frock worn in many cities of Valoria."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "valorian"
	allowed_race = list("human", "tiefling", "aasimar", "elf")
	sellprice = 13

//................ Silk Cape ............... //
/obj/item/clothing/cloak/cape/silk
	name = "silk cape"
	color = CLOTHING_WET
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "cape_silk"
	boobed = TRUE
	sleevetype = "shirt"
	nodismemsleeves = TRUE

/obj/item/clothing/cloak/cape/silk/random/Initialize()
	color = RANDOM_NOBLE_DYES
	add_overlay(mutable_appearance('modular/stonekeep/icons/clothing.dmi', "clasp"))
	..()

//................ Stockings ............... //
/obj/item/clothing/under/roguetown/tights/stockings
	name = "stockings"
	desc = "A legwear made just for the pure aesthetics. Popular in courts and brothels alike."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "stockings"
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	body_parts_covered = null
	flags_inv = null

/obj/item/clothing/under/roguetown/tights/stockings/random/Initialize()
	color = RANDOM_PEASANT_DYES
	..()
/obj/item/clothing/under/roguetown/tights/stockings/white
	color = CLOTHING_WHITE
/obj/item/clothing/under/roguetown/tights/stockings/black
	color = CLOTHING_SOOT_BLACK
/obj/item/clothing/under/roguetown/tights/stockings/blue
	color = CLOTHING_BERRY_BLUE
/obj/item/clothing/under/roguetown/tights/stockings/red
	color = CLOTHING_WINESTAIN_RED
/obj/item/clothing/under/roguetown/tights/stockings/green
	color = CLOTHING_SPRING_GREEN

//................ Silk stockings ............... //
/obj/item/clothing/under/roguetown/tights/stockings/silk
	name = "silk stockings"
	desc = "A legwear made just for the pure aesthetics. Made out of thin silk. Popular among nobles."
	icon_state = "silk"

/obj/item/clothing/under/roguetown/tights/stockings/silk/random/Initialize()
	color = RANDOM_NOBLE_DYES
	..()
/obj/item/clothing/under/roguetown/tights/stockings/silk/white
	color = CLOTHING_CHALK_WHITE
/obj/item/clothing/under/roguetown/tights/stockings/silk/black
	color = CLOTHING_DARK_INK
/obj/item/clothing/under/roguetown/tights/stockings/silk/blue
	color = CLOTHING_SKY_BLUE
/obj/item/clothing/under/roguetown/tights/stockings/silk/red
	color = CLOTHING_BLOOD_RED
/obj/item/clothing/under/roguetown/tights/stockings/silk/purple
	color = CLOTHING_PLUM_PURPLE

//................ Silk Pantaloons ............... //
/obj/item/clothing/under/roguetown/pantaloons
	name = "silk pantaloons"
	icon_state = "pantaloons"
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	color = CLOTHING_WET
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	adjustable = FALSE

/obj/item/clothing/under/roguetown/pantaloons/random/Initialize()
	color = RANDOM_NOBLE_DYES
	..()

/obj/item/clothing/under/roguetown/pantaloons/dark
	color = CLOTHING_DARK_INK

//................ Silk Jacket ............... //
/obj/item/clothing/suit/roguetown/armor/leather/jacket/niteman
	name = "silk jacket"
	desc = "Displaying wealth while keeping your guts safe from blades with thick leather pads underneath."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "niteman"
	sellprice = VALUE_LEATHER_ARMOR_LORD

	body_parts_covered = COVERAGE_SHIRT


//................ Crimson Marauder ............... //
/obj/item/clothing/suit/roguetown/armor/leather/jacket/sea/marauder
	slot_flags = ITEM_SLOT_ARMOR
	name = "jinete's linothorax"
	desc = "A stained leather cuirass bearing the snarling face of a demon. The tiefling nomads of the Crimsonlands shape this armor to hearken to that which their ancestors wore."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "crimson_armor"
	sleevetype = "shirt"
	nodismemsleeves = TRUE
	armor = ARMOR_LEATHER_GOOD
	body_parts_covered = CHEST|GROIN|LEGS|VITALS


//................ Rabbet Visage ............... //	- Basic Eora Acolyte
/obj/item/clothing/head/roguetown/padded/rabbetvisage
	name = "rabbet visage"
	desc = "A painted wooden rabbet worn by the faithful of Eora, usually during their rituals."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/64x64.dmi'
	icon_state = "eoramask"
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64
	dynamic_hair_suffix = ""

//................ Crimson Marauder ............... //
/obj/item/clothing/head/roguetown/helmet/ironpot/marauder
	name = "Jinete's Caspon"
	desc = "A solid bronze helmet from the age of the Apotheosis war. It has been reinforced and decorated for hundreds of yils, the symbol of pride for any Jinete, if not entirely outdated and ceremonial"
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/64x64.dmi'
	icon_state = "crimson_marauder"
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64
	flags_inv = HIDEEARS
	sellprice = VALUE_LEATHER_HELMET/2
	armor =  ARMOR_PLATE
	body_parts_covered = NECK|HAIR|EARS|HEAD

//................ Malumite helmet ............... //
/obj/item/clothing/head/roguetown/helmet/leather/minershelm/malumite
	name = "bowl of fire"
	desc = "The fires of industry burn ever on, to praise saint Malum."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/64x64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64
	armor = ARMOR_PLATE_BAD

/* * * * * * * * * * * **
 *						*
 *		 Underwear		*
 *						*
 *						*
 * * * * * * * * * * * **/

/obj/item/undies
	body_parts_covered = GROIN

/obj/item/undies/f
	body_parts_covered = CHEST|GROIN
