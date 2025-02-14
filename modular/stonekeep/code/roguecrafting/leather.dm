/* SKINCRAFT	-	skincraft skill
==========================================================*/
// The only ingridients these recipes can require is HIDE and FUR
// They all require a needle and a drying rack

/datum/crafting_recipe/roguetown/leather
	tools = list(/obj/item/needle)
	structurecraft = /obj/machinery/tanningrack
	skillcraft = /datum/skill/craft/tanning
	craftdiff = 0
	subtype_reqs = TRUE // so you can use any subtype of fur
	reqs = list(/obj/item/natural/hide/cured  = 1)


/*========= NO SKILL LEVEL REQUIRED ==========*/
/datum/crafting_recipe/roguetown/leather/saddle
	name = "saddle"
	result = /obj/item/natural/saddle
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/drum
	name = "instrument (drum)"
	result = /obj/item/natural/saddle
	reqs = list(/obj/item/natural/hide/cured = 1, /obj/item/grown/log/tree/small = 2)
	craftdiff = 4

/datum/crafting_recipe/roguetown/leather/whip
	name = "whip (hide)"
	result = /obj/item/rogueweapon/whip
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/whip
	name = "shirt (tribal)"
	result = /obj/item/clothing/suit/roguetown/shirt/tribalrag
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 0


/*=========		CLOAKS	==========*/
/datum/crafting_recipe/roguetown/leather/volfmantle
	name = "cloak (volf mantle)"
	result = /obj/item/clothing/cloak/volfmantle
	reqs = list(/obj/item/natural/fur/volf = 1,
	/obj/item/natural/head/volf = 1)
	craftdiff = 2
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/cloak
	name = "cloak (leather)"
	result = /obj/item/clothing/cloak/raincloak/brown

/datum/crafting_recipe/roguetown/leather/apron
	name = "cloak (leather apron)"
	result = /obj/item/clothing/cloak/apron/brown

/datum/crafting_recipe/roguetown/leather/cloakfur
	name = "cloak (fur)"
	result = /obj/item/clothing/cloak/raincloak/furcloak
	reqs = list(/obj/item/natural/fur = 1)

/datum/crafting_recipe/roguetown/leather/tribal_cloak
	name = "cloak (tribal)"
	result = /obj/item/clothing/cloak/tribal
	reqs = list(/obj/item/natural/hide = 2)


/*========= CONTAINERS ==========*/
/datum/crafting_recipe/roguetown/leather/satchel
	name = "storage (satchel)"
	result = /obj/item/storage/backpack/rogue/satchel
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/meatbag
	name = "storage (game satchel)"
	result = /obj/item/storage/meatbag
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/waterskin
	name = "waterskin"
	result = /obj/item/reagent_containers/glass/bottle/waterskin

/datum/crafting_recipe/roguetown/leather/quiver
	name = "quiver"
	result = /obj/item/ammo_holder/quiver
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/belt
	name = "belt (leather)"
	result = list(/obj/item/storage/belt/rogue/leather)

/datum/crafting_recipe/roguetown/leather/pouch
	name = "leather pouch"
	result = list(/obj/item/storage/belt/rogue/pouch)

/datum/crafting_recipe/roguetown/leather/backpack
	name = "storage (backpack)"
	result = /obj/item/storage/backpack/rogue/backpack
	reqs = list(/obj/item/natural/hide = 4)
	craftdiff = 2


/*=========		ARMOR	==========*/
/datum/crafting_recipe/roguetown/leather/armor
	name = "armor (leather)"
	result = /obj/item/clothing/suit/roguetown/armor/leather/basic
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 1
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/armor_corset
	name = "armor (corset)"
	result = /obj/item/clothing/suit/roguetown/armor/corset
	reqs = list(/obj/item/natural/hide/cured = 1)
	craftdiff = 1
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/armor_vest
	name = "armor (leather vest)"
	result = /obj/item/clothing/suit/roguetown/armor/leather/vest
	reqs = list(/obj/item/natural/hide/cured = 1)
	craftdiff = 1
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/armor_jacket
	name = "armor (leather jacket)"
	result = /obj/item/clothing/suit/roguetown/armor/leather/jacket
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 1
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/armor_sea
	name = "armor (sea jacket)"
	result = /obj/item/clothing/suit/roguetown/armor/leather/jacket/sea
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 2
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/hidearmor
	name = "armor (fur)"
	result = /obj/item/clothing/suit/roguetown/armor/leather/hide
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/armor_hardened
	name = "armor (heavy leather armor)"
	result = /obj/item/clothing/suit/roguetown/armor/leather/heavy
	reqs = list(/obj/item/natural/hide/cured = 3)
	craftdiff = 4
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/armor_masterwork
	name = "armor (heavy leather coat"
	result = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat
	reqs = 	list(/obj/item/natural/hide/cured = 4, /obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 5


/*=========		SHOES	==========*/
/datum/crafting_recipe/roguetown/leather/tribal_shoes
	name = "shoes (tribal)"
	result = list(/obj/item/clothing/shoes/roguetown/tribal)
	reqs = list(/obj/item/natural/hide  = 1)

/datum/crafting_recipe/roguetown/leather/furlinedanklets
	name = "shoes (fur lined anklets)"
	reqs = list(/obj/item/natural/fur = 1)
	result = /obj/item/clothing/shoes/roguetown/boots/furlinedanklets

/datum/crafting_recipe/roguetown/leather/sandals
	name = "shoes (sandals)"
	result = /obj/item/clothing/shoes/roguetown/sandals
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/shoes
	name = "leather shoes {ip}"
	result = /obj/item/clothing/shoes/roguetown/simpleshoes
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/furlinedboots
	name = "shoes (fur lined boots)"
	result = /obj/item/clothing/shoes/roguetown/boots/furlinedboots
	reqs = 	list(/obj/item/natural/hide = 1,
				/obj/item/natural/fur = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/boots
	name = "shoes (leather boots) {ip}"
	result = /obj/item/clothing/shoes/roguetown/boots/leather
//	req_imperial = TRUE
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/boots_short
	name = "shoes (short boots)"
	result = /obj/item/clothing/shoes/roguetown/shortboots
//	req_imperial = TRUE
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/gladiator
	name = "shoes (gladiator sandals)"
	result = /obj/item/clothing/shoes/roguetown/gladiator
	craftdiff = 2
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/boots_noble
	name = "shoes (noble boots)"
	result = /obj/item/clothing/shoes/roguetown/nobleboot
//	req_imperial = TRUE
	craftdiff = 2

/datum/crafting_recipe/roguetown/leather/boots_dark
	name = "shoes (riding boots)"
	result = /obj/item/clothing/shoes/roguetown/ridingboots
//	req_imperial = TRUE
	craftdiff = 2

/datum/crafting_recipe/roguetown/leather/boots_dark
	name = "shoes (riding boots)"
	result = /obj/item/clothing/shoes/roguetown/ridingboots
//	req_imperial = TRUE
	craftdiff = 2

/datum/crafting_recipe/roguetown/leather/boots_dark
	name = "shoes (dark boots)"
	result = /obj/item/clothing/shoes/roguetown/boots
//	req_imperial = TRUE
	craftdiff = 3

/datum/crafting_recipe/roguetown/leather/boots_hardened
	name = "shoes (hardened leather boots)"
	result = /obj/item/clothing/shoes/roguetown/boots/leather/hardened
	reqs = 	list(/obj/item/natural/hide/cured = 2)
	craftdiff = 4

/datum/crafting_recipe/roguetown/leather/boots_fencing
	name = "shoes (fencing boots)"
	result = /obj/item/clothing/shoes/roguetown/boots/leather/fencing
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 5


/*=========		GLOVES	==========*/
/datum/crafting_recipe/roguetown/leather/gloves
	name = "gloves (leather)"
	result = /obj/item/clothing/gloves/roguetown/leather

/datum/crafting_recipe/roguetown/leather/heavygloves
	name = "gloves (fur-lined)"
	result = /obj/item/clothing/gloves/roguetown/angle
	reqs = list(/obj/item/natural/hide/cured = 1,
				/obj/item/natural/fur = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/leather/gloves_hardened
	name = "gloves (hardened leather)"
	result = /obj/item/clothing/gloves/roguetown/leather/advanced
	reqs = 	list(/obj/item/natural/hide/cured = 2)
	craftdiff = 2

/datum/crafting_recipe/roguetown/leather/gloves_masterwork
	name = "gloves (masterwork leather)"
	result = /obj/item/clothing/gloves/roguetown/leather/masterwork
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 2


/*=========		PANTS	==========*/
/datum/crafting_recipe/roguetown/leather/pants
	name = "pants (leather)"
	result = list(/obj/item/clothing/under/roguetown/trou/leather)
	reqs = list(/obj/item/natural/hide/cured = 2)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/pants_heavy
	name = "pants (heavy leather)"
	result = /obj/item/clothing/under/roguetown/leather/heavy
	reqs = 	list(/obj/item/natural/hide/cured = 3)
	craftdiff = 4

/datum/crafting_recipe/roguetown/leather/pants_padded
	name = "pants (padded leather)"
	result = /obj/item/clothing/under/roguetown/leather/padded
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 5


/*=========		BRACERS	==========*/
/datum/crafting_recipe/roguetown/leather/bracers
	name = "bracers (leather)"
	result = /obj/item/clothing/wrists/roguetown/bracers/leather
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/bracers_masterwork
	name = "bracers (masterwork leather)"
	result =/obj/item/clothing/wrists/roguetown/bracers/leather/masterwork
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 5


/*=========		HEAD & NECK	==========*/
/datum/crafting_recipe/roguetown/leather/hood
	name = "hood"
	result = /obj/item/clothing/head/roguetown/roguehood/brown
	reqs = list(/obj/item/natural/hide = 1)

/datum/crafting_recipe/roguetown/leather/papakha
	name = "hat (papakha)"
	result = /obj/item/clothing/head/roguetown/papakha
	reqs = list(/obj/item/natural/fur = 1)

/datum/crafting_recipe/roguetown/leather/brimmedhat
	name = "hat (brimmed)"
	result = /obj/item/clothing/head/roguetown/brimmed
	reqs = list(/obj/item/natural/hide = 1)

/datum/crafting_recipe/roguetown/leather/coif
	name = "coif (leather)"
	result = /obj/item/clothing/neck/roguetown/coif
	craftdiff = 2

/datum/crafting_recipe/roguetown/leather/helmet
	name = "helmet (leather)"
	result = /obj/item/clothing/head/roguetown/helmet/leather
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/leather/antlerhood
	name = "hood (antler)"
	result = /obj/item/clothing/head/roguetown/antlerhood
	reqs = list(/obj/item/natural/hide = 1,
	/obj/item/natural/head/saiga = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/helmet_hardened
	name = "helmet (hardened leather)"
	result = /obj/item/clothing/head/roguetown/helmet/leather/advanced
	reqs = 	list(/obj/item/natural/hide/cured = 3)
	craftdiff = 4

/datum/crafting_recipe/roguetown/leather/helmet_masterwork
	name = "helmet (masterwork leather)"
	result = /obj/item/clothing/head/roguetown/helmet/leather/masterwork
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 5

/* UNTIL KAIZOKU ADDED ROGTODO

//////////////////////////////////////////
// Fogislander Cultured Crafting Area,  //
//////////////////////////////////////////


/datum/crafting_recipe/roguetown/leather/abyssalgloves
	name = "abyssal leather gloves (x2){fl}"
	result = list(/obj/item/clothing/gloves/roguetown/leather/abyssal,
	/obj/item/clothing/gloves/roguetown/leather/abyssal)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/khudagach
	name = "archery bracers (x2){fl}"
	result = list(/obj/item/clothing/wrists/roguetown/bracers/leather/khudagach,
			/obj/item/clothing/wrists/roguetown/bracers/leather/khudagach)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/furtobi
	name = "leather pants {fl}"
	result = list(/obj/item/clothing/under/roguetown/trou/leather/fur)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/jikatabi
	name = "jikatabi (x2){fl}"
	result = list(/obj/item/clothing/shoes/roguetown/boots/jikatabi,
				/obj/item/clothing/shoes/roguetown/boots/jikatabi)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/cloudhead
	name = "cloudhead shoes {fl}"
	result = /obj/item/clothing/shoes/roguetown/shortboots/cloudhead
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/geta
	name = "geta sandals {fl}"
	result = /obj/item/clothing/shoes/roguetown/sandals/geta
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/haori
	name = "haori jacket {fl}"
	result = list(/obj/item/clothing/suit/roguetown/armor/leather/jacket/haori)
	reqs = list(/obj/item/natural/hide = 2)
//	req_islander = TRUE

/*.............. recipes requiring skill 1 ..............*/

/datum/crafting_recipe/roguetown/leather/falcon
	name = "falconry heavy gloves {fl}"
	result = /obj/item/clothing/gloves/roguetown/angle/falcon
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/natural/fur = 1)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/malgai
	name = "malgai helmet {fl}"
	result = /obj/item/clothing/head/roguetown/helmet/leather/malgai
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/kaizokuhat
	name = "heartfeltean hat {fl}"
	result = /obj/item/clothing/head/roguetown/helmet/leather/malgai/kaizoku
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/kaizokuhat/female
	name = "female heartfeltean hat {fl}"
	result = /obj/item/clothing/head/roguetown/helmet/leather/malgai/kaizoku/female
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/abyssalarmor
	name = "leather lamellar armor {fl}"
	result = /obj/item/clothing/suit/roguetown/armor/leather/abyssal
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1
//	req_islander = TRUE

/*.............. recipes requiring skill 2 ..............*/

/datum/crafting_recipe/roguetown/leather/dustwalker
	name = "light cavalry armor {fl}"
	result = /obj/item/clothing/suit/roguetown/armor/leather/hide/dustwalker
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/shozoku
	name = "stealthy body armor {fl}"
	result = /obj/item/clothing/suit/roguetown/armor/leather/hide/shozoku
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/kaizoku
	name = "heartfeltean vest {fl}"
	result = /obj/item/clothing/suit/roguetown/armor/leather/vest/kaizoku
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 2
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/leather/arisan
	name = "cavalry light headgear {fl}"
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2
//	req_islander = TRUE
*/
