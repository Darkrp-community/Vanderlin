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
/obj/item/roguestatue/gnome
	name = "petrified gnome"
	desc = "A literal gnome, turned to stone by powerful magicks. Rather unsettling, or a fascinating experiment, depending on your point of view."
//	icon_state = "gnome_petrified"
	smeltresult = null

/obj/structure/fluff/shipssprote
	name = ""
	desc = ""
//	icon = 'icons/obj/atmospherics/pipes/disposal.dmi'
//	icon_state = "pipe"
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

/*
// ======================================================================
/*	..................   Colony Spider Web   ................... */
/obj/structure/innocent_web
	name = ""
	desc = ""
	icon = 'icons/roguetown/misc/tallstructure.dmi'
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
*/
