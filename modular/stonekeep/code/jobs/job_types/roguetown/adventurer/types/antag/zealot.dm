/datum/advclass/zealot  // matthios cleric
	name = "Zealot"
	tutorial = "A true believer, and in return Matthios allows this unhinged individual to channel some power."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = ALL_PLAYER_RACES_BY_NAME
	outfit = /datum/outfit/job/roguetown/bandit/zealot
	category_tags = list(CTAG_BANDIT)
	cmode_music = 'sound/music/cmode/antag/CombatBandit3.ogg'

/datum/outfit/job/roguetown/bandit/zealot/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)

	head = /obj/item/clothing/head/roguetown/helmet/leather/hood_ominous
	shirt = /obj/item/clothing/suit/roguetown/armor/leather/vest
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltl = /obj/item/rogueweapon/knife/hunting
	pants = /obj/item/clothing/under/roguetown/trou/leather
	backr = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/needle/thorn = 1, /obj/item/natural/cloth = 1)
	var/boots2choose = pickweight(list("Short" = 1, "Sandals" = 1))
	switch(boots2choose)
		if("Short")
			shoes = /obj/item/clothing/shoes/roguetown/shortboots
		if("Sandals")
			shoes = /obj/item/clothing/shoes/roguetown/gladiator

	H.change_stat("strength", 2)
	H.change_stat("constitution", 1)
	H.change_stat("endurance", 1)
	H.change_stat("speed", 1)
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)	// instead of medium armor. Because 2h flail dodger is different
	H.adjust_blindness(-3)
	var/weapons = list("Crusher", "Goedendag", "Club & Shield")
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Crusher")
			r_hand = /obj/item/rogueweapon/flail/peasant
		if("Goedendag")
			r_hand = /obj/item/rogueweapon/mace/goden
		if("Club & Shield")
			backl= /obj/item/rogueweapon/shield/wood
			beltr = /obj/item/rogueweapon/mace/woodclub
	H.verbs |= /mob/proc/haltyell
	H.ambushable = FALSE

	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.patron)
	C.grant_spells_cleric(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
