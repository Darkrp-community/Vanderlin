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

