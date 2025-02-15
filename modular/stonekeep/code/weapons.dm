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

// =================================================================================
// -------------- ARMOR -----------------
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
	max_integrity = INTEGRITY_STANDARD
	sellprice = 25
/obj/item/clothing/suit/roguetown/armor/leather/heavy/New()
	. = ..()
	if(icon_state == "roguearmor")
		if(prob(30))
			icon_state = "roguearmor_belt"
			item_state = "roguearmor_belt"

/obj/item/clothing/suit/roguetown/armor/leather/heavy/coat
	name = "reinforced leather coat"
	desc = "A heavy steerhide jerkin that reaches past the hips and better protects the vitals."
	icon_state = "roguearmor_coat"
	item_state = "roguearmor_coat"
	body_parts_covered = COVERAGE_ALL_BUT_ARMS
	sellprice = 40

/obj/item/clothing/suit/roguetown/armor/medium/scale/inquisitor
	name = "inquisitorial duster"
	desc = "Metal plates reinforce this heavy coat, only the finest for the inquisition."
	body_parts_covered = COVERAGE_FULL
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "inqcoat"
	item_state = "inqcoat"
	max_integrity = INTEGRITY_STRONG
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

/obj/item/clothing/suit/roguetown/shirt/robe/desertgown
	name = "desert gown"
	desc = "A thin piece of fabric worn under a robe to stop chafing and keep ones dignity if a harsh blow of wind comes through."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "desertgown"
	item_state = "desertgown"

/obj/item/clothing/suit/roguetown/shirt/robe/monkcloth
	name = "monks robes"
	desc = ""
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "monkcloth"
	item_state = "monkcloth"
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD

// ===========	PANTS	============

/obj/item/clothing/under/roguetown/trou
	salvage_result = /obj/item/natural/cloth
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
	salvage_result = /obj/item/natural/hide/cured
	armor =  ARMOR_LEATHER_BAD


/obj/item/clothing/under/roguetown/leather/heavy
	name = "heavy leather trousers"
	desc = "Thick hide cut and sewn into a pair of very protective trousers. The dense leather can \
	turn away errant chops."
	gender = PLURAL
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "roguepants"
	item_state = "roguepants"
	armor =  ARMOR_LEATHER
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	max_integrity = INTEGRITY_STANDARD
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	resistance_flags = FIRE_PROOF
	armor_class = AC_LIGHT

/obj/item/clothing/under/roguetown/leather/padded
	name = "padded leather trousers"
	desc = "Protects your legs from minor cuts and slashes well enough."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "fencerpants"
	resistance_flags = FIRE_PROOF
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	armor = 	ARMOR_LEATHER_GOOD

/obj/item/clothing/under/roguetown/splintlegs
	name = "splint chausses"
	desc = "Worn by many a wandering warrior."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "splintlegs"
	item_state = "splintlegs"
	blocksound = SOFTHIT
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/iron
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	armor_class = AC_LIGHT
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FIRE_PROOF
	sewrepair = FALSE

	armor = ARMOR_LEATHER_GOOD
	prevent_crits = ALL_EXCEPT_STAB
	max_integrity = INTEGRITY_STRONG

/obj/item/clothing/under/roguetown/chainlegs/reinforced
	name = "platemail chausses"
	desc = "Chain and plate for the best leg protection possible without going plate."
	icon_state = "heavyleggies"
	item_state = "heavyleggies"

/obj/item/clothing/under/roguetown/platelegs
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "plate_legs"
	item_state = "plate_legs"

/obj/item/clothing/under/roguetown/platelegs/captain
	icon = 'icons/roguetown/clothing/special/captain.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/captain.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_pants.dmi'

/obj/item/clothing/under/roguetown/platelegs/rust
	icon = 'icons/roguetown/clothing/special/rust_armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/rust_armor.dmi'
	sleeved = 'icons/roguetown/clothing/special/onmob/rust_armor.dmi'

/obj/item/clothing/under/roguetown/platelegs/vampire
	icon = 'icons/roguetown/clothing/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/pants.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_pants.dmi'


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
/obj/item/clothing/shoes/roguetown/boots/leather/hardened
	name = "hardened leather boots"
	desc = "Well-heeled boots. The leather thick enough to resist wear and tear."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "psydonboots"
	item_state = "psydonboots"
	max_integrity = 200
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	armor = ARMOR_LEATHER

/obj/item/clothing/shoes/roguetown/boots/leather/fencing
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

/obj/item/clothing/wrists/roguetown/bracers/leather
	armor = ARMOR_LEATHER_BAD
/obj/item/clothing/wrists/roguetown/bracers/leather/hardened
	name = "hardened leather bracers"
	desc = ""
	color = "#d5c2aa"
	armor = ARMOR_LEATHER
	prevent_crits = ALL_EXCEPT_BLUNT_AND_STAB


/obj/item/clothing/wrists/roguetown/bracers/splint
	name = "splint vambraces"
	desc = ""
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "splintarms"
	item_state = "splintarms"
	armor = ARMOR_LEATHER_GOOD
	blocksound = SOFTHIT
	resistance_flags = FIRE_PROOF
	anvilrepair = /datum/skill/craft/armorsmithing
	sewrepair = FALSE
	smeltresult = /obj/item/ingot/iron
	armor = ARMOR_LEATHER_GOOD
	prevent_crits = ALL_EXCEPT_STAB
	max_integrity = INTEGRITY_STRONG


/obj/item/clothing/gloves/roguetown/reinforced
	name = "reinforced gloves"
	desc = "Metal bits protects your hands."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "roguegloves"
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	resistance_flags = FLAMMABLE // Made of leather

	armor = ARMOR_LEATHER_GOOD
	prevent_crits = ALL_EXCEPT_CHOP_AND_STAB
	max_integrity = INTEGRITY_STANDARD
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/gloves/roguetown/fencer
	name = "fencing gloves"
	desc = "Excellent quality."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	sleeved = 'modular/stonekeep/icons/onmob/sleeves.dmi'
	icon_state = "fencergloves"
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	resistance_flags = FLAMMABLE // Made of leather

	armor = ARMOR_LEATHER
	prevent_crits = ALL_EXCEPT_CHOP_AND_STAB
	max_integrity = INTEGRITY_STRONG
	salvage_result = /obj/item/natural/hide/cured




/obj/item/clothing/head/roguetown/roguehood/hierophant
	name = "hierophant's pashmina"
	desc = "A thick hood that covers one's entire head, should they desire, or merely acts as a scarf otherwise."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	icon_state = "deserthood"
	item_state = "deserthood"
/obj/item/clothing/head/roguetown/roguehood/hierophant/Initialize()
	. = ..()
	color = RANDOM_NOBLE_DYES

/obj/item/clothing/head/roguetown/roguehood/pontifex
	name = "pontifex's pashmina"
	desc = "A slim hood with thin, yet dense fabric. Stretchy and malleable, allowing for full flexibility and mobility."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	icon_state = "monkhood"
	item_state = "monkhood"
/obj/item/clothing/head/roguetown/roguehood/pontifex/Initialize()
	. = ..()
	color = RANDOM_PEASANT_DYES

/obj/item/clothing/head/roguetown/inqhat
	name = "inquisitorial hat"
	desc = "To keep ones vision away from the heavens, and focused on the sin beneath the soil."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	icon_state = "inqhat"
	item_state = "inqhat"
	sewrepair = TRUE

/obj/item/clothing/head/roguetown/archercap
	name = "archer's cap"
	desc = "For the merry men."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	icon_state = "archercap"


/obj/item/clothing/head/roguetown/helmet/heavy/psydonbarbute
	name = "psydonian barbute"
	desc = "A ceremonial barbute, masterfully forged to represent Psydon's divine authority. The Order of Saint Malum's artisans have chiseled this pronged visage into more statues than you could possibly imagine."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	icon_state = "psydonbarbute"
	item_state = "psydonbarbute"
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR

/obj/item/clothing/head/roguetown/helmet/heavy/chevalier
	name = "chevalier armet"
	desc = "An ornate helmet, whose visor has been bound shut with blacksteel chains."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	icon_state = "psydonarmet"
	item_state = "psydonarmet"
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR

/obj/item/clothing/head/roguetown/helmet/heavy/chevalier/attackby(obj/item/W, mob/living/user, params)
	..()
	if(istype(W, /obj/item/natural/cloth) && !detail_tag)
		var/list/colors = list(
		"Swan White"="#ffffff",
		"Lavender"="#865c9c",
		"Royal Purple"="#5E4687",
		"Wine Rouge"="#752B55",
		"Sow's skin"="#CE929F",
		"Knight's Red"="#933030",
		"Madroot Red"="#AD4545",
		"Marigold Orange"="#E2A844",
		"Politely, Yuck"="#685542",
		"Astrata's Yellow"="#FFFD8D",
		"Bog Green"="#375B48",
		"Seafoam Green"="#49938B",
		"Woad Blue"="#395480",
		"Cornflower Blue"="#749EE8",
		"Blacksteel Grey"="#404040",)

		var/choice = input(user, "Choose a color.", "Orle") as anything in colors
		user.visible_message(span_warning("[user] adds [W] to [src]."))
		qdel(W)
		detail_color = colors[choice]
		detail_tag = "_detail"
		update_icon()
		if(loc == user && ishuman(user))
			var/mob/living/carbon/H = user
			H.update_inv_head()

/obj/item/clothing/head/roguetown/helmet/heavy/chevalier/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)



/obj/item/clothing/head/roguetown/helmet/heavy/knight
	name = "knight's helmet"
	desc = "A noble knight's helm in the current style popular with nobility. Add a feather to show the colors of your family or allegiance."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	icon_state = "knight"
	item_state = "knight"
	adjustable = CAN_CADJUST
	emote_environment = 3
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR
	block2add = FOV_BEHIND
	max_integrity = 300
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/head/roguetown/helmet/heavy/knight/AdjustClothes(mob/user)
	if(loc == user)
		playsound(user, "sound/items/visor.ogg", 100, TRUE, -1)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			icon_state = "knightum"
			body_parts_covered = HEAD|HAIR|EARS
			flags_inv = HIDEEARS
			flags_cover = null
			emote_environment = 0
			update_icon()
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_head()
			block2add = null
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			emote_environment = 3
			update_icon()
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_head()
		user.update_fov_angles()

/obj/item/clothing/head/roguetown/helmet/heavy/knight/attackby(obj/item/W, mob/living/user, params)
	..()
	if(istype(W, /obj/item/natural/feather) && !detail_tag)
		var/list/colors = list(
		"Swan White"="#ffffff",
		"Lavender"="#865c9c",
		"Royal Purple"="#5E4687",
		"Wine Rouge"="#752B55",
		"Sow's skin"="#CE929F",
		"Knight's Red"="#933030",
		"Madroot Red"="#AD4545",
		"Marigold Orange"="#E2A844",
		"Politely, Yuck"="#685542",
		"Astrata's Yellow"="#FFFD8D",
		"Bog Green"="#375B48",
		"Seafoam Green"="#49938B",
		"Woad Blue"="#395480",
		"Cornflower Blue"="#749EE8",
		"Blacksteel Grey"="#404040",)

		var/choice = input(user, "Choose a color.", "Plume") as anything in colors
		detail_color = colors[choice]
		detail_tag = "_detail"
		user.visible_message(span_warning("[user] adds [W] to [src]."))
		qdel(W)
		update_icon()
		if(loc == user && ishuman(user))
			var/mob/living/carbon/H = user
			H.update_inv_head()

/obj/item/clothing/head/roguetown/helmet/heavy/knight/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)


/obj/item/clothing/head/roguetown/helmet/bascinet/pigface
	name = "pigface bascinet"
	desc = "A steel bascinet helmet with a pigface visor protecting the head, ears, nose, mouth, and eyes. Add a feather to show the colors of your family or allegiance."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	icon_state = "hounskull"
	item_state = "hounskull"
	adjustable = CAN_CADJUST
	emote_environment = 3
	body_parts_covered = FULL_HEAD
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	block2add = FOV_BEHIND
	smeltresult = /obj/item/ingot/steel


/obj/item/clothing/head/roguetown/helmet/bascinet/pigface/AdjustClothes(mob/user)
	if(loc == user)
		playsound(user, "sound/items/visor.ogg", 100, TRUE, -1)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			icon_state = "hounskull_visor_raised"
			body_parts_covered = HEAD|EARS|HAIR
			flags_inv = HIDEEARS|HIDEHAIR
			flags_cover = null
			emote_environment = 0
			update_icon()
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_head()
			block2add = null
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			emote_environment = 3
			update_icon()
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_head()
		user.update_fov_angles()

/obj/item/clothing/head/roguetown/helmet/bascinet/pigface/attackby(obj/item/W, mob/living/user, params)
	..()
	if(istype(W, /obj/item/natural/feather) && !detail_tag)
		var/list/colors = list(
		"Swan White"="#ffffff",
		"Lavender"="#865c9c",
		"Royal Purple"="#5E4687",
		"Wine Rouge"="#752B55",
		"Sow's skin"="#CE929F",
		"Knight's Red"="#933030",
		"Madroot Red"="#AD4545",
		"Marigold Orange"="#E2A844",
		"Politely, Yuck"="#685542",
		"Astrata's Yellow"="#FFFD8D",
		"Bog Green"="#375B48",
		"Seafoam Green"="#49938B",
		"Woad Blue"="#395480",
		"Cornflower Blue"="#749EE8",
		"Blacksteel Grey"="#404040",)

		var/choice = input(user, "Choose a color.", "Plume") as anything in colors
		detail_color = colors[choice]
		detail_tag = "_detail"
		user.visible_message(span_warning("[user] adds [W] to [src]."))
		qdel(W)
		update_icon()
		if(loc == user && ishuman(user))
			var/mob/living/carbon/H = user
			H.update_inv_head()

/obj/item/clothing/head/roguetown/helmet/bascinet/pigface/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)


/obj/item/clothing/head/roguetown/helmet/kettle_helmet
	name = "kettle helmet"
	desc = "A steel helmet which protects the top and sides of the head."
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	icon_state = "kettle"
	body_parts_covered = HEAD|HAIR|EARS
	armor = list("blunt" = 80, "slash" = 90, "piercing" = 100, "stab" = 70, "fire" = 0, "acid" = 0)

/obj/item/clothing/head/roguetown/helmet/kettle_helmet/attackby(obj/item/W, mob/living/user, params)
	..()
	if(istype(W, /obj/item/natural/cloth) && !detail_tag)
		var/list/colors = list(
		"Swan White"="#ffffff",
		"Lavender"="#865c9c",
		"Royal Purple"="#5E4687",
		"Wine Rouge"="#752B55",
		"Sow's skin"="#CE929F",
		"Knight's Red"="#933030",
		"Madroot Red"="#AD4545",
		"Marigold Orange"="#E2A844",
		"Politely, Yuck"="#685542",
		"Astrata's Yellow"="#FFFD8D",
		"Bog Green"="#375B48",
		"Seafoam Green"="#49938B",
		"Woad Blue"="#395480",
		"Cornflower Blue"="#749EE8",
		"Blacksteel Grey"="#404040",)

		var/choice = input(user, "Choose a color.", "Orle") as anything in colors
		user.visible_message(span_warning("[user] adds [W] to [src]."))
		qdel(W)
		detail_color = colors[choice]
		detail_tag = "_detail"
		update_icon()
		if(loc == user && ishuman(user))
			var/mob/living/carbon/H = user
			H.update_inv_head()

/obj/item/clothing/head/roguetown/helmet/kettle_helmet/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)


//................ Kettle Helmet (Slitted)............... //
/obj/item/clothing/head/roguetown/helmet/kettle/slit
	icon_state = "kettle_slit"
	icon = 'modular/stonekeep/icons/clothing.dmi'
	mob_overlay_icon = 'modular/stonekeep/icons/onmob/clothes.dmi'
	worn_x_dimension = 32
	worn_y_dimension = 32
	bloody_icon_state = "helmetblood"
	bloody_icon = 'icons/effects/blood.dmi'


