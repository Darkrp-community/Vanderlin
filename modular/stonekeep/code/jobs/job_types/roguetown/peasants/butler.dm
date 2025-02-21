/datum/job/roguetown/butler
	title = "Butler"
	flag = BUTLER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	f_title = "Maid"
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Aasimar"
	)
	allowed_ages = list(AGE_MIDDLEAGED, AGE_OLD, AGE_IMMORTAL)
	tutorial = "You are one of the last remaining loyal to your lord and master, the Psyrant. \
				In yils past you led a veritable host of servants for your honored liege, more and more being let go over the past decade. Now it is just you. \
				Even in such dire times, upholding the standards of service and decorum within the palace is a duty worth dying for."
	outfit = /datum/outfit/job/roguetown/butler
	display_order = JDO_BUTLER
	bypass_lastclass = TRUE
	min_pq = -25
	give_bank_account = 15
	cmode_music = 'sound/music/cmode/towner/CombatInn.ogg'

/datum/outfit/job/roguetown/butler/pre_equip(mob/living/carbon/human/H)
	..()
	backpack_contents = list(/obj/item/book/rogue/manners = 1)
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE) // A well educated head of servants should at least have skilled literacy level
		H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/labor/butchering, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/stealing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/music, pick(1,1,2,3), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE) // Privilege of living a life raising nobility. Knows the very basics about riding a mount
		H.change_stat("strength", -1)
		H.change_stat("intelligence", 2)
		H.change_stat("perception", 1)
		H.change_stat("endurance", 1)

	if(H.gender == MALE)
		pants = /obj/item/clothing/under/roguetown/tights
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/guard
		shoes = /obj/item/clothing/shoes/roguetown/nobleboot
		belt = /obj/item/storage/belt/rogue/leather/plaquesilver
		beltr = /obj/item/storage/keyring/butler
		beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
		armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/butler
		backr = /obj/item/storage/backpack/rogue/satchel
		mask = /obj/item/clothing/mask/rogue/spectacles

	else
		armor = /obj/item/clothing/suit/roguetown/shirt/dress/gen/maid
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
		shoes = /obj/item/clothing/shoes/roguetown/ridingboots
		cloak = /obj/item/clothing/cloak/apron
		belt = /obj/item/storage/belt/rogue/leather/cloth/lady
		beltr = /obj/item/storage/keyring/butler
		beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
		backr = /obj/item/storage/backpack/rogue/satchel
