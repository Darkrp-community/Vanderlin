/* * * * * * * * * * * **
 *						*
 *		 General		*
 *						*
 *						*
 * * * * * * * * * * * **/

#define NORMAL_TOWNER_RACES 	list("Humen","Elf","Half-Elf","Dwarf")
#define EXPANDED_TOWNER_RACES 	list("Humen","Elf","Aasimar","Half-Elf","Dwarf")
#define PEASANT_RACES 			list("Humen","Aasimar","Half-Elf","Dwarf")

// =================================================================================
// -------------- SOAP -----------------
/obj/item/soap
	name = "soap"
	desc = ""
	gender = PLURAL
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "soap"
	w_class = WEIGHT_CLASS_TINY
	item_flags = NOBLUDGEON
	throwforce = 0
	throw_speed = 1
	throw_range = 7
	grind_results = list(/datum/reagent/lye = 10)
	cleanspeed = 35 //slower than mop
	uses = 10

/obj/item/soap/attack(mob/living/carbon/human/target, mob/living/carbon/user)
	user.changeNext_move(CLICK_CD_MELEE)
	var/turf/bathspot = get_turf(target)				// Checks for being in a bath and being undressed
	if(!istype(bathspot, /turf/open/water/bath))
		to_chat(user, span_warning("They must be in the bath water!"))
		return
	if(!ishuman(target))
		to_chat(user, span_warning("They don't want to be soaped..."))
		return

	if(istype(target.wear_armor, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with armor on."))
		return

	if(istype(target.wear_shirt, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with clothing on."))
		return

	if(istype(target.cloak, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with clothing on."))
		return

	if(istype(target.wear_pants, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with pants on."))
		return

	if(istype(target.shoes, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with shoes on."))
		return

	user.visible_message("<span class='info'>[user] begins scrubbing [target] with the [src].</span>")	// Applies the special bonus only if Nitemaiden using the soap
	playsound(src.loc, pick('sound/items/soaping.ogg'), 100)
	if(do_after(user, 5 SECONDS, target = target))
		if((user.job == "Nitemaiden"))
			user.visible_message(span_info("[user] expertly scrubs and soothes [target] with the [src]."))
			to_chat(target, span_warning("I feel so relaxed and clean!"))
			target.apply_status_effect(/datum/status_effect/buff/clean_plus)
			target.tiredness = 0
			target.remove_status_effect(/datum/status_effect/debuff/sleepytime)
		else
			user.visible_message(span_info("[user] tries their best to scrub [target] with the [src]."))
			to_chat(target, span_warning("Its worth a little soap in my eyes to get clean."))
		wash_atom(target, CLEAN_STRONG)
		uses -= 1
		if(uses == 0)
			qdel(src)


// =================================================================================
/*------\
| Crops |
\------*/

/datum/plant_def/jacksberry
	icon = 'modular/stonekeep/icons/crops.dmi'

/datum/plant_def/jacksberry_poison
	icon = 'modular/stonekeep/icons/crops.dmi'

/datum/plant_def/swampweed
	icon = 'modular/stonekeep/icons/crops.dmi'

/datum/plant_def/potato
	icon = 'modular/stonekeep/icons/crops.dmi'

/datum/plant_def/turnip
	icon = 'modular/stonekeep/icons/crops.dmi'

/datum/plant_def/onion
	icon = 'modular/stonekeep/icons/crops.dmi'

// =================================================================================
/*-------\
| Papers |
\-------*/

/obj/item/paper/note_about_dwarfs
	name = "report to Guild on steel deliveries"
	info = "Last yils deliverie of steele from the dwarf outposte in the northeast: 83 ingots of finest steel. None hath been delivered this yil, this will not do. For the good of the Makers Guild, this must be investigated."

/obj/item/paper/reminder_about_dwarfs
	name = "note about steel deliveries"
	info = "Makers! The northern dwarves delivery of steele is much delayed this yil. Make do or go get it from them, the Guild cannot do more to solve this."

/obj/item/paper/feldsher_certificate
	name = "feldsher health certificate"
	info = "The wearer hath passed the feldshers monthly inspection as mandated by the pestilence laws, and is not a bearer of maladies to infect our towne.   \
	Thus they are allowede legally to ply the nitemaidens trade. I so swear on this date. (signed by the town feldsher, the date is a few weeks ago)"
/obj/item/paper/feldsher_certificate/expired
	info = "The wearer hath passed the feldshers monthly inspection as mandated by the pestilence laws, and is not a bearer of maladies to infect our towne.   \
	Thus they are allowede legally to ply the nitemaidens trade. I so swear on this date.  (signed by the town feldsher, the date is half a year ago)"
/obj/item/paper/feldsher_certificate/fake
	info = "The wearer hath passed the feldshers monthly inspection as mandated by the pestilence laws, and is not a bearer of maladies to infect our towne.   \
	Thus they are allowede legally to ply the nitemaidens trade. I so swear on this date.  (signature is undreadable, the date is a few weeks ago)"
/obj/item/paper/feldsher_certificate/Initialize()
	..()
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "certificate"


// =================================================================================
/*------\
| Items |
\------*/

/obj/item/clothing/head/peaceflower
	icon = 'modular/stonekeep/icons/misc.dmi'

/obj/item/reagent_containers/glass/bucket/pot/copper
	icon = 'modular/stonekeep/icons/cooking.dmi'

/obj/item/reagent_containers/glass/bucket/pot/stone
	icon = 'modular/stonekeep/icons/cooking.dmi'
	icon_state = "pote_stone"
	drop_sound = 'modular/stonekeep/sound/stone_scrape.ogg'


/obj/item/grown/log/tree
	lefthand_file = 'modular/stonekeep/icons/onmob/lefthand.dmi'
	righthand_file = 'modular/stonekeep/icons/onmob/righthand.dmi'
	experimental_inhand = FALSE
/obj/item/grown/log/tree/small
	icon_state = "logsmall"
/obj/item/grown/log/tree/stake
/obj/item/grown/log/tree/stick
	item_state = "stick"
/obj/item/natural/wood/plank
	lefthand_file = 'modular/stonekeep/icons/onmob/lefthand.dmi'
	righthand_file = 'modular/stonekeep/icons/onmob/righthand.dmi'
	experimental_inhand = FALSE
/obj/item/natural/bundle/plank
	lefthand_file = 'modular/stonekeep/icons/onmob/lefthand.dmi'
	righthand_file = 'modular/stonekeep/icons/onmob/righthand.dmi'
	experimental_inhand = FALSE

/obj/item/grown/log/tree/small/essence	// disabled in this shitty way, its a literal powerup icon coin for mario to bop head on, very gamey ROGTODO
	name = ""
	desc = ""
	icon_state = ""



// =================================================================================
/*----------------\
| Lighting tweaks |
\----------------*/
// base was 8, 5 for torches

/obj/machinery/light/rogue/firebowl
	brightness = 10

/obj/machinery/light/rogue/wallfire
	brightness = 9

/obj/machinery/light/rogue/torchholder
	brightness = 7

// braziers, magic fire, lamps etc are rain resistant, standing fires and torch holders are not
/obj/machinery/light/rogue/torchholder/Initialize()
	. = ..()
	GLOB.weather_act_upon_list += src

/obj/machinery/light/rogue/torchholder/Destroy()
	GLOB.weather_act_upon_list -= src
	. = ..()


/obj/machinery/light/rogue/firebowl/standing/Initialize()
	. = ..()
	GLOB.weather_act_upon_list += src
/obj/machinery/light/rogue/firebowl/standing/Destroy()
	GLOB.weather_act_upon_list -= src
	. = ..()

/obj/machinery/light/rogue/firebowl/standing/blue/Initialize()
	. = ..()
	GLOB.weather_act_upon_list -= src
/obj/machinery/light/rogue/firebowl/standing/lamp/Initialize()
	. = ..()
	GLOB.weather_act_upon_list -= src



// =================================================================================
/*---------------\
| Weather tweaks |
\---------------*/
/obj/item/flashlight/flare/torch/Initialize()
	. = ..()
	GLOB.weather_act_upon_list += src

/obj/item/flashlight/flare/torch/Destroy()
	GLOB.weather_act_upon_list -= src
	. = ..()

/obj/item/flashlight/flare/torch/weather_act_on(weather_trait, severity)
	if(weather_trait != PARTICLEWEATHER_RAIN)
		return
	extinguish()

/obj/machinery/light/rogue/firebowl/standing/weather_act_on(weather_trait, severity)
	if(weather_trait != PARTICLEWEATHER_RAIN)
		return
	extinguish()

/datum/particle_weather/rain_gentle/weather_act(mob/living/L)
	L.adjust_bodytemperature(-rand(1,3))
	L.SoakMob(FULL_BODY)
	if(L.fire_stacks > 0)
		if(prob(1))
			L.adjust_fire_stacks(-1)

/datum/particle_weather/rain_storm/weather_act(mob/living/L)
	L.adjust_bodytemperature(-rand(3,5))
	L.SoakMob(FULL_BODY)
	if(L.fire_stacks > 0)
		if(prob(1))
			L.adjust_fire_stacks(-1)




/*	..................   For premapped blood skipping timers, diseases etc   ................... */
/obj/effect/decal/cleanable/blood_neu
	name = "blood"
	desc = ""
	icon = 'icons/effects/blood.dmi'
	icon_state = "floor1"
	alpha = 200
	nomouseover = TRUE
	nomouseover = TRUE
	var/wash_precent = 0
	COOLDOWN_DECLARE(wash_cooldown)

/obj/effect/decal/cleanable/blood_neu/weather_act_on(weather_trait, severity)
	if(weather_trait != PARTICLEWEATHER_RAIN || !COOLDOWN_FINISHED(src, wash_cooldown))
		return
	wash_precent += min(10, severity / 4)
	alpha = 255 *((100 - wash_precent) * 0.01)
	if(wash_precent >= 100)
		qdel(src)
	COOLDOWN_START(src, wash_cooldown, 15 SECONDS)

/obj/effect/decal/cleanable/blood_neu/Initialize(mapload)
	. = ..()
	pixel_x = rand(-5,5)
	pixel_y = rand(5,5)
	GLOB.weather_act_upon_list += src

/obj/effect/decal/cleanable/blood_neu/Destroy()
	GLOB.weather_act_upon_list -= src
	return ..()

/obj/effect/decal/cleanable/blood_neu/random/Initialize(mapload)
	. = ..()
	icon_state = pick("floor1", "floor2", "floor3", "floor4", "floor5", "floor6", "splatter1", "splatter2", "splatter3", "splatter4", "splatter5", "splatter6", "gibl1", "gibl2", "gibl3", "gibl4", "gibl5")

/obj/effect/decal/cleanable/blood_neu/tracks
	icon_state = "tracks"



// ==============================================================
/*	..................   Various mapping aides   ................... */
/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/broken
	desc = "A long shirt of maille, this one is made for a short man it seems."
/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/broken/Initialize()
	. = ..()
	obj_break()

/obj/item/clothing/suit/roguetown/armor/chainmail/battered
	desc = "A good quality haubergon, but weakened by many blows."
	max_integrity = INTEGRITY_STANDARD
/*
/obj/structure/roguethrone/statues
	icon = 'modular/Mapping/icons/96x96.dmi
*/

/*	..................   Misc   ................... */
/obj/item/roguestatue/gnome	// for the wizards tower
	name = "petrified gnome"
	desc = "A literal gnome, turned to stone by powerful magicks. Rather unsettling, or a fascinating experiment, depending on your point of view."
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "petrignome"
	smeltresult = null

/obj/structure/fluff/shipssprote
	name = ""
	desc = ""
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "sprote"
	mouse_opacity = 0
	color = "#5a4621"
	pixel_y = -16


/obj/effect/decal/miasma
	name = ""
	desc = ""
	icon = 'icons/roguetown/mob/rotten.dmi'
	icon_state = "deadite"
	mouse_opacity = 0

/obj/effect/decal/remains/human/old
	name = "remains"
	color = "#d6b3a5"

/obj/effect/decal/remains/human/old/small
	icon_state = "remainslarva"


/obj/structure/fluff/walldeco/rags
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "wallrags1"
/obj/structure/fluff/walldeco/rags/alt
	icon_state = "wallrags2"
/obj/structure/fluff/walldeco/rags/skull
	icon_state = "wallskull"

// ======================================================================
/*	..................   Colony Spider Web   ................... */
/obj/structure/innocent_web
	name = ""
	desc = ""
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "innocentweb1"
	layer = ABOVE_ALL_MOB_LAYER
	density = FALSE
	max_integrity = 35
	climbable = FALSE
	dir = SOUTH
	debris = list(/obj/item/natural/silk = 1)
	var/lucky_escape

/obj/structure/innocent_web/Initialize()
	. = ..()
	icon_state = "innocentweb[rand(1,2)]"
	return ..()

/obj/structure/innocent_web/attack_hand()
	playsound(src, pick('sound/misc/jumpscare (1).ogg','sound/misc/jumpscare (2).ogg','sound/misc/jumpscare (3).ogg','sound/misc/jumpscare (4).ogg'), 100)
	new /mob/living/simple_animal/hostile/retaliate/rogue/spider/colony (get_turf(src))
	qdel(src)

/obj/structure/innocent_web/attackby(obj/item, /mob/user, params)
	playsound(src, pick('sound/misc/jumpscare (1).ogg','sound/misc/jumpscare (2).ogg','sound/misc/jumpscare (3).ogg','sound/misc/jumpscare (4).ogg'), 100)
	new /mob/living/simple_animal/hostile/retaliate/rogue/spider/colony (get_turf(src))
	qdel(src)

/obj/structure/innocent_web/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	playsound(src, pick('sound/misc/jumpscare (1).ogg','sound/misc/jumpscare (2).ogg','sound/misc/jumpscare (3).ogg','sound/misc/jumpscare (4).ogg'), 100)
	new /mob/living/simple_animal/hostile/retaliate/rogue/spider/colony (get_turf(src))
	qdel(src)

/obj/structure/innocent_web/Crossed(atom/movable/AM)
	..()
	if(isliving(AM))
		var/mob/living/carbon/human/L = AM
		lucky_escape = ( L.STALUC * 4 )
		L.Immobilize(5)
		if(L.m_intent == MOVE_INTENT_WALK)
			L.Immobilize(10)
			if(prob(lucky_escape))
				to_chat(L, "<span class='warning'>The flimsy web breaks.</span>")
				qdel(src)
			else
				playsound(src, pick('sound/misc/jumpscare (1).ogg','sound/misc/jumpscare (2).ogg','sound/misc/jumpscare (3).ogg','sound/misc/jumpscare (4).ogg'), 120)
				new /mob/living/simple_animal/hostile/retaliate/rogue/spider/colony (get_turf(src))
				qdel(src)
		if(L.m_intent == MOVE_INTENT_RUN)
			to_chat(L, "<span class='warning'>I'm stuck in the web!</span>")
			L.Immobilize(20)
			if(prob(lucky_escape))
				to_chat(L, "<span class='warning'>The flimsy web breaks.</span>")
				qdel(src)
			else
				playsound(src, pick('sound/misc/jumpscare (1).ogg','sound/misc/jumpscare (2).ogg','sound/misc/jumpscare (3).ogg','sound/misc/jumpscare (4).ogg'), 120)
				new /mob/living/simple_animal/hostile/retaliate/rogue/spider/colony (get_turf(src))
				qdel(src)
		else
			to_chat(L, "<span class='warning'>I'm stuck in the web!</span>")
			L.Immobilize(5)
			if(prob(lucky_escape))
				to_chat(L, "<span class='warning'>The flimsy web breaks.</span>")
				qdel(src)
			else
				playsound(src, pick('sound/misc/jumpscare (1).ogg','sound/misc/jumpscare (2).ogg','sound/misc/jumpscare (3).ogg','sound/misc/jumpscare (4).ogg'), 120)
				new /mob/living/simple_animal/hostile/retaliate/rogue/spider/colony (get_turf(src))
				qdel(src)


/mob/living/simple_animal/hostile/retaliate/rogue/spider/colony // colony spider
	name = "hairy spider"
	desc = "The forest canopies hides more than leaves...These creachers make honey from flowers and spin silk from their abdomen, when not consuming prey."
	icon_state = "spider"
	icon_living = "spider"
	icon_dead = "spider-dead"
	botched_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/strange = 1,
							/obj/item/natural/silk = 1)
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/strange= 2,
							/obj/item/reagent_containers/food/snacks/spiderhoney = 1,
							/obj/item/natural/silk = 2)
	perfect_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/strange = 2,
							/obj/item/reagent_containers/food/snacks/spiderhoney = 2,
							/obj/item/natural/silk = 3)



// Corpses
/obj/effect/mob_spawn/human/orc/corpse
	icon = 'icons/effects/blood.dmi'
	icon_state = "remains"
	color = "#aa9b00"
	mob_type = /mob/living/carbon/human/species/orc

/obj/effect/mob_spawn/human/orc/corpse/savageorc
	mob_name = "Savage Orc"
	name = "Savage Orc"
	skin_tone = "#50715C"
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"
	outfit = /datum/outfit/savageorc

/obj/effect/mob_spawn/human/orc/corpse/savageorc2
	mob_name = "Savage Orc"
	name = "Savage Orc"
	skin_tone = "#50715C"
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"
	outfit = /datum/outfit/savageorc2

/datum/outfit/savageorc
//	shirt = /obj/item/clothing/suit/roguetown/shirt/tribalrag	Vanderlin clothing
	pants =	/obj/item/clothing/under/roguetown/loincloth/brown
	shoes = /obj/item/clothing/shoes/roguetown/boots/furlinedanklets

/datum/outfit/savageorc2
//	shirt = /obj/item/clothing/suit/roguetown/shirt/tribalrag
	pants =	/obj/item/clothing/under/roguetown/loincloth/brown
	shoes = /obj/item/clothing/shoes/roguetown/boots/furlinedanklets
	head = /obj/item/clothing/head/roguetown/helmet/leather

/obj/effect/mob_spawn/human/orc/corpse/orcmarauder
	mob_name = "Orc Marauder"
	name = "Orc Marauder"
	skin_tone = "#50715C"
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"
//	outfit = /datum/outfit/orcmarauder  doesnt actually equip this TO DO
	mob_type = /mob/living/carbon/human/species/orc/marauder
/*
/datum/outfit/orcmarauder
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail
	pants =	/obj/item/clothing/under/roguetown/chainlegs
	shoes = /obj/item/clothing/shoes/roguetown/boots/furlinedboots
	head = /obj/item/clothing/head/roguetown/helmet/leather
*/
/obj/effect/mob_spawn/human/orc/corpse/orcravager
	mob_name = "Orc Ravager"
	name = "Orc Ravager"
	skin_tone = "#50715C"
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"
	outfit = /datum/outfit/orcravager

/datum/outfit/orcravager
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail
	pants =	/obj/item/clothing/under/roguetown/chainlegs
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	head = /obj/item/clothing/head/roguetown/helmet/skullcap
	gloves = /obj/item/clothing/gloves/roguetown/chain
	neck = /obj/item/clothing/neck/roguetown/chaincoif
///	mask = /obj/item/clothing/mask/rogue/skullmask	Vanderlin clothing TO DO review it

/obj/effect/mob_spawn/human/orc/corpse/dwarfinvasion
	color = "#82aa00"
	mob_type = /mob/living/carbon/human/species/orc/dwarfinvasion

/mob/living/carbon/human/species/orc/dwarfinvasion/after_creation()
	..()
	equipOutfit(new /datum/outfit/job/roguetown/npc/orc/dead_invader)

/datum/outfit/job/roguetown/npc/orc/dead_invader/pre_equip(mob/living/carbon/human/H)
	..()
	var/loadout = rand(1,5)
	switch(loadout)
		if(1)
			armor = /obj/item/clothing/suit/roguetown/armor/leather/hide/orc
		if(2)
			armor = /obj/item/clothing/suit/roguetown/armor/leather/hide/orc
			cloak = /obj/item/clothing/cloak/raincloak/brown
		if(3)
			cloak = /obj/item/clothing/cloak/raincloak/brown
		if(4)
			armor = /obj/item/clothing/suit/roguetown/armor/leather/hide/orc
			cloak = /obj/item/clothing/cloak/raincloak/brown
		if(5)
			armor = /obj/item/clothing/suit/roguetown/armor/leather/hide/orc
			cloak = /obj/item/clothing/cloak/raincloak/brown

/*	..................   Dwarf Underdweller Corpse   ................... */
/obj/effect/mob_spawn/human/corpse/damaged/underdweller
	icon = 'icons/effects/blood.dmi'
	icon_state = "remains"
	color = "#aa9b00"
	mob_type = /mob/living/carbon/human/species/dwarf/mountain
	mob_name = "Dwarf Underdweller"
	name = "Dwarf Underdweller"
	hairstyle = "Miner"
	facial_hairstyle = "Pick"
	outfit = /datum/outfit/deadunderdweller

/datum/outfit/deadunderdweller
	armor = /obj/item/clothing/suit/roguetown/armor/cuirass/iron
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/sailor/red
	pants = /obj/item/clothing/under/roguetown/trou/leather
	shoes = /obj/item/clothing/shoes/roguetown/simpleshoes/buckle
	backl = /obj/item/storage/backpack/rogue/backpack
	head = /obj/item/clothing/head/roguetown/helmet/leather/minershelm



// ======================================================================

/*	..................   Pigflowers   ................... */
/obj/structure/flora/rogueflower // ausbushes recolored
	name = "flowers"
	icon = 'modular/stonekeep/icons/pigflora.dmi'
	icon_state = "reedbush_1"

/obj/structure/flora/rogueflower/fallenleaves
	icon_state = "leaves"
	alpha = 200
/obj/structure/flora/rogueflower/fallenleaves/Initialize()
	dir = pick(GLOB.cardinals)
	. = ..()

/obj/structure/flora/rogueflower/reedbush
	icon_state = "reedbush_1"
/obj/structure/flora/rogueflower/reedbush/Initialize()
	icon_state = "reedbush_[rand(1, 4)]"
	. = ..()

/obj/structure/flora/rogueflower/lavendergrass
	icon_state = "lavendergrass_1"
/obj/structure/flora/rogueflower/lavendergrass/Initialize()
	icon_state = "lavendergrass_[rand(1, 4)]"
	. = ..()

/obj/structure/flora/rogueflower/ywflowers
	icon_state = "ywflowers_1"
/obj/structure/flora/rogueflower/ywflowers/Initialize()
	icon_state = "ywflowers_[rand(1, 3)]"
	. = ..()

/obj/structure/flora/rogueflower/brflowers
	icon_state = "brflowers_1"
/obj/structure/flora/rogueflower/brflowers/Initialize()
	icon_state = "brflowers_[rand(1, 3)]"
	. = ..()

/obj/structure/flora/rogueflower/ppflowers
	icon_state = "ppflowers_1"

/obj/structure/flora/rogueflower/ppflowers/Initialize()
	icon_state = "ppflowers_[rand(1, 3)]"
	. = ..()

/obj/structure/flora/roguegrass/stalky
	name = ""
	desc = ""
	icon = 'modular/stonekeep/icons/pigflora.dmi'
	icon_state = "stalkygrass"
	opacity = FALSE

/obj/structure/flora/roguegrass/stalky/update_icon()
	dir = pick(GLOB.cardinals)


// ===================================================================================
/*	..................   Dwarf Outpost   ................... */
/obj/effect/landmark/map_load_mark/dwarf_outpost
	name = "Dwarf Outpost"
	templates = list( "Dwarf_Outpost_1","Dwarf_Outpost_2" )

/datum/map_template/dwarf_outpost_i
	name = "Dwarf Outpost Orc"
	id = "Dwarf_Outpost_1"
	mappath = "_maps/map_files/templates/dwarf_outpost/Dwarf_Outpost_1.dmm"

/datum/map_template/dwarf_outpost_ii
	name = "Dwarf Outpost Beastmen"
	id = "Dwarf_Outpost_2"
	mappath = "_maps/map_files/templates/dwarf_outpost/Dwarf_Outpost_2.dmm"


/*	..................   Roadblock   ................... */
/obj/effect/landmark/map_load_mark/hamlet_roadblock
	name = "Roadblock"
	templates = list( "roadblock_1","roadblock_2" )

/datum/map_template/roadblock_i
	name = "Roadblock"
	id = "roadblock_1"
	mappath = "_maps/map_files/templates/stonehamlet/roadblock_1.dmm"

/datum/map_template/roadblock_ii
	name = "No roadblock"
	id = "roadblock_2"
	mappath = "_maps/map_files/templates/stonehamlet/roadblock_2.dmm"



/obj/structure/bearpelt
	icon = 'modular/stonekeep/icons/bear.dmi'
	alpha = 240
	color = "#e9e7d7"
/datum/sprite_accessory/facial_hair/stubble
	name = "Stubble"
	icon = 'modular/stonekeep/icons/facial.dmi'
	icon_state = "facial_stubble"
	gender = MALE
	specuse = list("human", "dwarf", "elf", "aasimar", "tiefling", "halforc")

/mob/living/carbon/human/proc/try_grow_beard()

	if(!(dna?.species))
		return

	// Certain races dont grow beards
	if(!(dna.species in RACES_WITH_BEARD_GROWTH))
		return

	if(!(STUBBLE in dna.species.species_traits))
		return

	if(mob_biotypes & MOB_UNDEAD)
		return

	// Change this if you want female dwarves with beard growth
	if(gender != MALE)
		return

	var/datum/bodypart_feature/hair/facial/beard = get_bodypart_feature_of_slot(BODYPART_FEATURE_FACIAL_HAIR)
	if(!beard)
		return

	if(beard.accessory_type == /datum/sprite_accessory/facial_hair/shaved)
		beard.accessory_type = /datum/sprite_accessory/facial_hair/stubble
		to_chat(src, span_warning("My face itches."))
		update_hair()

// Darkling debuffs
/datum/status_effect/debuff/darkling_glare
	id = "darkling_glare"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/darkling_glare
	effectedstats = list("perception" = -1)
	duration = 10 SECONDS

/atom/movable/screen/alert/status_effect/debuff/darkling_glare
	name = "Eye Strain"
	desc = "My eyes are starting to water, the light burns."
	icon_state = "stressb"

/datum/status_effect/debuff/darkling_migraine
	id = "darkling_migraine"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/darkling_migraine
	effectedstats = list("endurance" = -1, "intelligence" = -1) //Will basically always be stacked with the eye strain penalty
	duration = 20 SECONDS

/atom/movable/screen/alert/status_effect/debuff/darkling_migraine
	name = "Migraine"
	icon_state = "muscles"
	desc = "My head is pounding, I need to get away from the light and rest a while!"


/datum/stressevent/darkling_toobright
	stressadd = 1
	desc = span_red("It's too bright, the light hurts my eyes.")
	timer = 30 SECONDS
/datum/stressevent/darkling_migraine
	stressadd = 3
	desc = "My head is pounding, I can barely think. I need to get away from the light and rest a while!"
	timer = 1 MINUTES


/datum/species/elf/dark/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	. = ..()
	C.AddComponent(/datum/component/darkling)

/datum/status_effect/buff/darkling_darkly
	id = "Darkling"
	alert_type =  /atom/movable/screen/alert/status_effect/buff/darkling_darkly
	effectedstats = list("perception" = 1)
	duration = 5 SECONDS

/atom/movable/screen/alert/status_effect/buff/darkling_darkly
	name = "Darkling"
	desc = "You are at home in the dark. Unbothered. In your lane. Moisturized."
	icon_state = "stressg"


/datum/status_effect/debuff/badvision
	effectedstats = list("perception" = -6, "speed" = -2,"fortune" = -5)
	duration = 100



/obj/item/reagent_containers/food/snacks/fat
	fried_type = /obj/item/reagent_containers/food/snacks/tallow
	cooktime = 15 SECONDS


// -------------- TALLOW (fried fat for crafting) -----------------
/obj/item/reagent_containers/food/snacks/tallow
	name = "tallow"
	desc = "Fatty tissue is harvested from slain creachurs and rendered of its membraneous sinew to produce a hard shelf-stable \
	grease. Useful for making processed leather clothing, but little else. Can be sliced into smaller pieces before use to be less wasteful. Inedible"
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "tallow"
	tastes = list("grease" = 1, "oil" = 1, "regret" =1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 2)
	bitesize = 2
	slice_path = /obj/item/reagent_containers/food/snacks/tallow/piece
	slices_num = 2
	slice_batch = FALSE
	slice_sound = TRUE
	eat_effect = /datum/status_effect/debuff/uncookedfood

/obj/item/reagent_containers/food/snacks/tallow/update_icon()
	if(slices_num)
		icon_state = "tallow"
	else
		icon_state = "tallowslice"

/obj/item/reagent_containers/food/snacks/tallow/On_Consume(mob/living/eater)
	..()
	changefood(slice_path, eater)

/obj/item/reagent_containers/food/snacks/tallow/piece
	name = "piece of tallow"
	desc = "Inedible. Ready for use in crafting."
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "tallowslice"
	bitesize = 1
	slices_num = FALSE
	slice_path = FALSE
	eat_effect = /datum/status_effect/debuff/uncookedfood
	list_reagents = list(/datum/reagent/consumable/nutriment = 1)


/*	..................   Astrata Shrine   ................... */
/obj/structure/fluff/psycross/crafted/shrine/astrata
	name = "The Sun Queen"
	desc = ""
	icon = 'modular/stonekeep/icons/64x64.dmi'
	icon_state = "astrata"
	pixel_x = -19

/*	..................   Necra Shrine   ................... */
/obj/structure/fluff/psycross/crafted/shrine/necra
	name = "The Undermaiden"
	desc = ""
	icon = 'modular/stonekeep/icons/64x64.dmi'
	icon_state = "necra"
	pixel_x = -16

/*	..................   Dendor Shrine   ................... */
/obj/structure/fluff/psycross/crafted/shrine/dendor
	name = "The Tree Father"
	desc = ""
	icon = 'modular/stonekeep/icons/64x64.dmi'
	icon_state = "mystical"
	pixel_x = -10

/*	..................   Abyssor Shrine   ................... */
/obj/structure/fluff/psycross/crafted/shrine/abyssor
	name = "The World Whale"
	desc = ""
	icon = 'modular/stonekeep/icons/96x96.dmi'
	icon_state = "abyssor"
	bound_width = 64
	pixel_x = -25

/*	..................   Abandoned Malum Shrine (Dromkis revenge)   ................... */	// Not meant to be craftable, its abandoned and got a reward for relight it, special for malumites
/obj/structure/fluff/psycross/crafted/shrine/malum
	name = "abandoned statue of Malum"
	desc = "The fire has gone out, the statue cold. The bowl on top is made to hold coal."
	icon = 'modular/stonekeep/icons/64x64.dmi'
	icon_state = "malum"
	bound_width = 64
	var/datum/looping_sound/fireloop/soundloop
	var/refueled
	var/on

/obj/structure/fluff/psycross/crafted/shrine/malum/attackby(obj/item/A, mob/user, params)
	if(istype(A, /obj/item/rogueore/coal))
		if(refueled)
			return
		else
			icon_state = "malum_fueled"
			refueled = TRUE
			playsound(src.loc, 'modular/stonekeep/sound/stone_scrape.ogg', 100)
			qdel(A)
/obj/structure/fluff/psycross/crafted/shrine/malum/spark_act()
	fire_act()
/obj/structure/fluff/psycross/crafted/shrine/malum/fire_act(added, maxstacks)
	if(!on)
		playsound(src.loc, 'sound/items/firelight.ogg', 100)
		soundloop = new /datum/looping_sound/fireloop(src,FALSE)
		soundloop.start()
		on = TRUE
		name = "statue of Malum"
		icon_state = "malum_fire"
		set_light(5, 4, 30, l_color = LIGHT_COLOR_YELLOW)
		update_icon()
		soundloop.start()
		malums_blessings()
		return TRUE
/obj/structure/fluff/psycross/crafted/shrine/malum/Destroy()
	QDEL_NULL(soundloop)
	. = ..()

/obj/structure/fluff/psycross/crafted/shrine/malum/proc/malums_blessings(mob/living/carbon/human)
	for(var/mob/living/carbon/H in hearers(7, loc))
		switch(H.patron?.type)
			if(/datum/patron/divine/malum)
				H.adjust_triumphs(1)
				H.apply_status_effect(/datum/status_effect/buff/craft_buff)
				playsound(H, 'modular/stonekeep/sound/triumph_w.ogg', 100, FALSE, -5)
			else
				H.apply_status_effect(/datum/status_effect/buff/craft_buff)

// makes barrels climbable, its really weird they arent.
/obj/structure/fermenting_barrel
	climbable = TRUE
	climb_offset = 8
