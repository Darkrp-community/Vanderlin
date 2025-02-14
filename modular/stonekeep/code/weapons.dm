/* * * * * **
 *			*
 *	Weapons	*
 *			*
 * * * * * **/

// =================================================================================
// -------------- POLEARMS -----------------
/obj/item/rogueweapon/polearm
	icon = 'modular/stonekeep/icons/weapons_64.dmi'
	slot_flags = null

/obj/item/rogueweapon/polearm/eaglebeak
	slot_flags = null

/obj/item/rogueweapon/polearm/eaglebeak/lucerne
	name = "poleaxe"
	desc = "A poleaxe of simple iron, fracture bone and dissent with simple brute force."
	icon_state = "poleaxe"

/obj/item/rogueweapon/polearm/halberd/bardiche/warcutter
	name = "war axe"
	desc = "Favored by common folk looking to cut a noble whoreson down to size."
	smeltresult = /obj/item/ingot/iron

/obj/item/rogueweapon/mace/goden
	icon = 'modular/stonekeep/icons/weapons_64.dmi'

/obj/item/rogueweapon/polearm/woodstaff/aries/noc // for noc priest
	name = "staff of lunar epiphany"
	icon_state = "naledistaff"

/obj/item/rogueweapon/polearm/spear/bonespear
	icon_state = "bonespear"

/obj/item/rogueweapon/polearm/spear/hoplite
	desc = "A humble spear with a bronze head, a rare survivor from the battles long past that nearly destroyed Grimoria."

/obj/item/rogueweapon/polearm/spear/hoplite/winged
	desc = "A humble spear with a bronze head, a rare survivor from the battles long past that nearly destroyed Grimoria."

/obj/item/rogueweapon/flail/peasant
	name = "crusher"
	desc = "To break, smash and chastise thy foes."
	icon = 'modular/stonekeep/icons/weapons_64.dmi'
	icon_state = "crusher"


//................ Onehanders ............... //
/obj/item/rogueweapon/mace/steel
	icon = 'modular/stonekeep/icons/weapons.dmi'

/obj/item/rogueweapon/knife/hunting
	icon = 'modular/stonekeep/icons/weapons.dmi'

/obj/item/rogueweapon/mace/cudgel
	icon = 'modular/stonekeep/icons/weapons.dmi'

/obj/item/rogueweapon/knife/cleaver
	icon = 'modular/stonekeep/icons/weapons.dmi'

/obj/item/rogueweapon/knife/villager
	icon = 'modular/stonekeep/icons/weapons.dmi'

/obj/item/rogueweapon/pick/paxe
	icon = 'modular/stonekeep/icons/weapons.dmi'

/obj/item/rogueweapon/hammer/sledgehammer
	icon = 'modular/stonekeep/icons/weapons.dmi'

/obj/item/rogueweapon/flail/sflail
	icon = 'modular/stonekeep/icons/weapons.dmi'


/obj/item/rogueweapon/mace/copperbludgeon
	name = "studded club"
	desc = "A simple wooden club reinforced with some metal bits."
	icon = 'modular/stonekeep/icons/weapons.dmi'
	icon_state = "bludgeon"

/obj/item/rogueweapon/mace/cudgel/carpenter
	name = "studded club"
	desc = "A simple wooden club reinforced with some metal bits."
	icon = 'modular/stonekeep/icons/weapons.dmi'
	icon_state = "bludgeon"

/obj/item/rogueweapon/flail/militia
	desc = "A lucky hit from such a flail can squash a cheap helmet along with the wearer's skull."
	icon_state = "iflail_old"

/obj/item/rogueweapon/flail/towner
	desc = "A lucky hit from such a flail can squash a cheap helmet along with the wearer's skull."
	icon_state = "iflail_old"


/obj/item/clothing/suit/roguetown/armor/leather/basic
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'

/obj/item/clothing/suit/roguetown/armor/leather/heavy
	name = "heavy leather armor"
	desc = "A heavy steerhide jerkin with enough body to stand on its own. It forms a stiff, protective mantle \
	for its wearer, shielding from blows and weather alike."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "roguearmor"
	item_state = "roguearmor"
	armor = ARMOR_LEATHER_GOOD
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT, BCLASS_CHOP)
	max_integrity = 300
	sellprice = 25
/obj/item/clothing/suit/roguetown/armor/leather/heavy/New()
	. = ..()
	if(icon_state == "roguearmo")
		if(prob(30))
			icon_state = "roguearmor_belt"
			item_state = "roguearmor_belt"

/obj/item/clothing/suit/roguetown/armor/leather/heavy/coat
	name = "armored leather coat"
	desc = "A heavy steerhide jerkin that reaches past the hips and better protects the vitals."
	icon_state = "roguearmor_coat"
	item_state = "roguearmor_coat"
	body_parts_covered = CHEST|GROIN|VITALS|LEGS
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT, BCLASS_CHOP)
	max_integrity = 200
	sellprice = 25


/obj/item/clothing/suit/roguetown/armor/plate/scale/inqcoat
	name = "inquisitorial duster"
	desc = "Metal plates reinforce this heavy coat, only the finest for the inquisition."
	body_parts_covered = CHEST|VITALS|GROIN|LEGS|ARMS
	allowed_sex = list(MALE, FEMALE)
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "inqcoat"
	item_state = "inqcoat"
	sleevetype = "shirt"
	max_integrity = 200
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 4 SECONDS
	armor_class = AC_MEDIUM
	blocksound = SOFTHIT

/* needs some edits in update icon for sleeved detail, ROGTODO
/obj/item/clothing/suit/roguetown/armor/brigandine/coat
	name = "coat of the commander"
	desc = "A thick boiled leather surcoat with plates concealed in it's many great folds. It weighs a ton and takes a great man to wear."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "leathercoat"
	item_state = "leathercoat"
	var/picked = FALSE
	sleeved_detail = TRUE
	boobed_detail = TRUE
	armor = ARMOR_MAILLE_GOOD

/obj/item/clothing/suit/roguetown/armor/brigandine/sheriff/coat/attack_right(mob/user)
	if(picked)
		return
	var/the_time = world.time
	var/pickedvalue = input(user, "Select a color", "KINGSLAYER'S GARB") as null|anything in list("Khaki", "Black")
	if(!pickedvalue)
		return
	if(world.time > (the_time + 30 SECONDS))
		return
	if(pickedvalue == "Khaki")
		picked = TRUE
	else if(pickedvalue == "Black")
		picked = TRUE
		icon_state = "bleathercoat"
		item_state = "bleathercoat"
		update_icon()
		if(ismob(loc))
			var/mob/L = loc
			L.update_inv_armor()
*/

/obj/item/clothing/suit/roguetown/shirt/robe/hierophant
	name = "hierophant's kandys"
	desc = "A thin piece of fabric worn under a robe to stop chafing and keep ones dignity if a harsh blow of wind comes through."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "desertgown"
	item_state = "desertgown"
	color = null

/obj/item/clothing/suit/roguetown/shirt/robe/pointfex
	name = "pointfex's qaba"
	desc = "A slimmed down, tighter fitting robe made of fine silks and fabrics. Somehow you feel more mobile in it than in the nude."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "monkcloth"
	item_state = "monkcloth"
	color = null
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD

// ===========	PANTS	============
/obj/item/clothing/under/roguetown/platelegs/vampire
	icon = 'icons/roguetown/clothing/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/pants.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_pants.dmi'

/obj/item/clothing/under/roguetown/trou/baggy
	name = "baggy pants"
	desc = "A pair of baggy, comfortable pants. They end in a tight stocking around the calf, ballooning out around the thigh."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "monkpants"
	item_state = "monkpants"
	armor = ARMOR_WEAK
/obj/item/clothing/under/roguetown/trou/baggy/Initialize()
	. = ..()
	color = RANDOM_NOBLE_DYES
/obj/item/clothing/under/roguetown/trou/leather
	armor =  ARMOR_LEATHER_BAD
/obj/item/clothing/under/roguetown/splintlegs
	name = "brigandine chausses"
	desc = "Splint mail and brigandine chausses, designed to protect the legs while still providing almost complete free range of movement."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "splintlegs"
	item_state = "splintlegs"
	max_integrity = 250
	armor = ARMOR_SCALE
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = SOFTHIT
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/iron
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	armor_class = AC_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FIRE_PROOF
	sewrepair = FALSE
/obj/item/clothing/under/roguetown/trou/leather/advanced
	name = "heavy leather trousers"
	desc = "Thick hide cut and sewn into a pair of very protective trousers. The dense leather can \
	turn away errant chops."
	gender = PLURAL
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "roguepants"
	item_state = "roguepants"
	sewrepair = TRUE
	armor =  ARMOR_LEATHER
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = SOFTHIT
	max_integrity = 250
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	resistance_flags = FIRE_PROOF
	armor_class = AC_LIGHT

/obj/item/clothing/under/roguetown/trou/leather/masterwork
	name = "padded leather trousers"
	desc = "Protects your legs from minor cuts and slashes well enough."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "fencerpants"
	resistance_flags = FIRE_PROOF

	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = SOFTHIT
	max_integrity = 300
	blade_dulling = DULLING_BASHCHOP
	sewrepair = TRUE
	armor = 	ARMOR_LEATHER_GOOD

/obj/item/clothing/under/roguetown/platelegs
	name = "steel plate chausses"
	desc = "Reinforced armor to protect the legs."
	gender = PLURAL
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "plate_legs"
	item_state = "plate_legs"
//	adjustable = CAN_CADJUST
	sewrepair = FALSE
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = PLATEHIT
	max_integrity = 400
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	resistance_flags = FIRE_PROOF
	armor_class = AC_HEAVY

// ===========	BOOTS	============
/obj/item/clothing/shoes/roguetown/boots/leather
	armor = ARMOR_PADDED
	blocksound = SOFTHIT
/obj/item/clothing/shoes/roguetown/boots/armor
	armor = ARMOR_PLATE
/obj/item/clothing/shoes/roguetown/simpleshoes/buckle
	armor = ARMOR_WEAK
/obj/item/clothing/shoes/roguetown/boots
	armor = ARMOR_PADDED_BAD

/obj/item/clothing/shoes/roguetown/nobleboot
	armor = ARMOR_PADDED_BAD
/obj/item/clothing/shoes/roguetown/shortboots
	armor = ARMOR_WEAK
/obj/item/clothing/shoes/roguetown/ridingboots
	armor = ARMOR_PADDED
/obj/item/clothing/shoes/roguetown/apothboots
	armor = ARMOR_PADDED_BAD

/obj/item/clothing/shoes/roguetown/boots/armor/light
	armor = ARMOR_PLATE_BAD

/obj/item/clothing/shoes/roguetown/grenzelhoft
	armor = ARMOR_PADDED
/obj/item/clothing/shoes/roguetown/boots/leather/advanced
	name = "hardened leather boots"
	desc = "Well-heeled boots. The leather thick enough to resist wear and tear."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "psydonboots"
	item_state = "psydonboots"
	sewrepair = TRUE
	max_integrity = 200
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	armor = ARMOR_LEATHER

/obj/item/clothing/shoes/roguetown/boots/leather/masterwork
	name = "fencing boots"
	desc = "Boots of outstanding craft, your fragile feet has never felt so protected and comfortable before."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "fencerboots"
	item_state = "fencerboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	max_integrity = 200
	armor = ARMOR_LEATHER_GOOD

/obj/item/clothing/shoes/roguetown/boots/armor/iron
	name = "iron plated boots"
	desc = "Boots with iron for added protection."
	body_parts_covered = FEET
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "armorironboots"
	item_state = "armorironboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	max_integrity = 200
	armor = ARMOR_SCALE
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/shoes/roguetown/boots/leather/inqboots
	name = "inquisitorial boots"
	desc = "Finely crafted boots, made to stomp out darkness."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "inqboots"
	item_state = "inqboots"
	armor = ARMOR_LEATHER_GOOD




