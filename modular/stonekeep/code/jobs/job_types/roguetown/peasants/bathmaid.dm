
/datum/job/roguetown/nitemaiden
	title = "Nitemaiden"
	flag = JESTER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 4
	spawn_positions = 4

	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf"
	)

	tutorial = "You should not see this.."
	allowed_sexes = list(FEMALE)
	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED)
	outfit = /datum/outfit/job/roguetown/nitemaiden
	display_order = JDO_APOTHECARY // ROGTODO
	give_bank_account = TRUE
	min_pq = -25
	can_random = FALSE
	bypass_lastclass = TRUE

/datum/outfit/job/roguetown/nitemaiden/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	armor = /obj/item/clothing/suit/roguetown/shirt/dress/gen/sexy
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/key/nitemaiden
	beltl = /obj/item/storage/belt/rogue/pouch/nitemaiden



//	ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)	ROGTODO

	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE) // To wrestle people out of the baths
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/stealing, pick(1,2,3,4), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/lockpicking, pick(1,1,2), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/music, pick(1,2), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)


//Nitemaiden pouch
/obj/item/storage/belt/rogue/pouch/nitemaiden/PopulateContents()
	if(prob(50))
		new /obj/item/paper/feldsher_certificate(src)
	else
		new /obj/item/paper/feldsher_certificate/expired(src)
	new /obj/item/soap(src)
	new /obj/item/roguecoin/copper/pile(src)




