/* SKINCRAFT	-	skincraft skill
==========================================================*/
// The only ingridients these recipes can require is HIDE and FUR
// They all require a needle and a drying rack

/datum/crafting_recipe/leather
	tools = list(/obj/item/needle)
	structurecraft = /obj/machinery/tanningrack
	skillcraft = /datum/skill/craft/tanning
	craftdiff = 0
	subtype_reqs = TRUE // so you can use any subtype of fur
	reqs = list(/obj/item/natural/hide/cured  = 1)


/*========= NO SKILL LEVEL REQUIRED ==========*/
/datum/crafting_recipe/leather/saddle
	name = "saddle"
	result = /obj/item/natural/saddle
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 1

/datum/crafting_recipe/leather/drum
	name = "instrument (drum)"
	result = /obj/item/natural/saddle
	reqs = list(/obj/item/natural/hide/cured = 1, /obj/item/grown/log/tree/small = 2)
	craftdiff = 4

/datum/crafting_recipe/leather/whip
	name = "whip (hide)"
	result = /obj/item/weapon/whip
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1

/datum/crafting_recipe/leather/whip
	name = "shirt (tribal)"
	result = /obj/item/clothing/shirt/tribalrag
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 0


/*=========		CLOAKS	==========*/
/datum/crafting_recipe/leather/volfmantle
	name = "cloak (volf mantle)"
	result = /obj/item/clothing/cloak/volfmantle
	reqs = list(/obj/item/natural/fur/volf = 1,
	/obj/item/natural/head/volf = 1)
	craftdiff = 2
	req_imperial = TRUE

/datum/crafting_recipe/leather/cloak
	name = "cloak (leather)"
	result = /obj/item/clothing/cloak/raincloak/brown

/datum/crafting_recipe/leather/apron
	name = "cloak (leather apron)"
	result = /obj/item/clothing/cloak/apron/brown

/datum/crafting_recipe/leather/cloakfur
	name = "cloak (fur)"
	result = /obj/item/clothing/cloak/raincloak/furcloak
	reqs = list(/obj/item/natural/fur = 1)

/datum/crafting_recipe/leather/tribal_cloak
	name = "cloak (tribal)"
	result = /obj/item/clothing/cloak/tribal
	reqs = list(/obj/item/natural/hide = 2)


/*========= CONTAINERS ==========*/
/datum/crafting_recipe/leather/satchel
	name = "storage (satchel)"
	result = /obj/item/storage/backpack/satchel
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 1

/datum/crafting_recipe/leather/meatbag
	name = "storage (game satchel)"
	result = /obj/item/storage/meatbag
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 1

/datum/crafting_recipe/leather/waterskin
	name = "waterskin"
	result = /obj/item/reagent_containers/glass/bottle/waterskin

/datum/crafting_recipe/leather/quiver
	name = "quiver"
	result = /obj/item/ammo_holder/quiver
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/leather/belt
	name = "belt (leather)"
	result = list(/obj/item/storage/belt/leather)

/datum/crafting_recipe/leather/pouch
	name = "leather pouch"
	result = list(/obj/item/storage/belt/pouch)

/datum/crafting_recipe/leather/backpack
	name = "storage (backpack)"
	result = /obj/item/storage/backpack/backpack
	reqs = list(/obj/item/natural/hide = 4)
	craftdiff = 2


/*=========		ARMOR	==========*/
/datum/crafting_recipe/leather/armor
	name = "armor (leather)"
	result = /obj/item/clothing/armor/leather/basic
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 1
	req_imperial = TRUE


/datum/crafting_recipe/leather/armor/haori
	name = "armor (haori jacket) {fl}"
	result = list(/obj/item/clothing/armor/leather/jacket/haori)
	reqs = list(/obj/item/natural/hide = 2)
	req_islander = TRUE


/datum/crafting_recipe/leather/armor/corset
	name = "armor (corset)"
	result = /obj/item/clothing/armor/corset
	reqs = list(/obj/item/natural/hide/cured = 1)

/datum/crafting_recipe/leather/armor/vest
	name = "armor (leather vest)"
	result = /obj/item/clothing/armor/leather/vest
	reqs = list(/obj/item/natural/hide/cured = 1)

/datum/crafting_recipe/leather/armor/jacket
	name = "armor (leather jacket)"
	result = /obj/item/clothing/armor/leather/jacket
	reqs = list(/obj/item/natural/hide/cured = 2)

/datum/crafting_recipe/leather/armor/sea
	name = "armor (sea jacket)"
	result = /obj/item/clothing/armor/leather/jacket/sea
	reqs = list(/obj/item/natural/hide/cured = 2)
	craftdiff = 2



/datum/crafting_recipe/leather/armor/abyssal
	name = "armor (leather lamellar)"
	result = /obj/item/clothing/armor/leather/abyssal
	req_islander = TRUE

/datum/crafting_recipe/leather/dustwalker
	name = "armor (cavalry)"
	result = /obj/item/clothing/armor/leather/hide/dustwalker
	reqs = list(/obj/item/natural/hide/cured = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2
	req_islander = TRUE

/datum/crafting_recipe/leather/shozoku
	name = "armor (stealthy)"
	result = /obj/item/clothing/armor/leather/hide/shozoku
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2
	req_islander = TRUE

/datum/crafting_recipe/leather/kaizoku	// ROGTODO should be silk according to desc
	name = "armor (heartfeltean vest)"
	result = /obj/item/clothing/armor/leather/vest/kaizoku
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 2
	req_islander = TRUE

/datum/crafting_recipe/leather/armor/hide
	name = "armor (fur)"
	result = /obj/item/clothing/armor/leather/hide
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2

/datum/crafting_recipe/leather/armor/heavy
	name = "armor (heavy leather armor)"
	result = /obj/item/clothing/armor/leather/heavy
	reqs = list(/obj/item/natural/hide/cured = 3, /obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 4

/datum/crafting_recipe/leather/armor/heavycoat
	name = "armor (heavy leather coat"
	result = /obj/item/clothing/armor/leather/heavy/coat
	reqs = 	list(/obj/item/natural/hide/cured = 4, /obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 5


/*=========		SHOES	==========*/
/datum/crafting_recipe/leather/tribal_shoes
	name = "shoes (tribal)"
	result = list(/obj/item/clothing/shoes/tribal)
	reqs = list(/obj/item/natural/hide  = 1)

/datum/crafting_recipe/leather/furlinedanklets
	name = "shoes (fur lined anklets)"
	reqs = list(/obj/item/natural/fur = 1)
	result = /obj/item/clothing/shoes/boots/furlinedanklets

/datum/crafting_recipe/leather/sandals
	name = "shoes (sandals)"
	result = /obj/item/clothing/shoes/sandals
	req_imperial = TRUE

/datum/crafting_recipe/leather/shoes
	name = "shoes (simple}"
	result = /obj/item/clothing/shoes/simpleshoes
	req_imperial = TRUE

/datum/crafting_recipe/leather/jikatabi
	name = "shoes (jikatabi)"
	result = list(/obj/item/clothing/shoes/boots/jikatabi)
	req_islander = TRUE

/datum/crafting_recipe/leather/cloudhead
	name = "shoes (cloudhead)"
	result = /obj/item/clothing/shoes/shortboots/cloudhead
	req_islander = TRUE

/datum/crafting_recipe/leather/geta
	name = "shoes (geta sandals)"
	result = /obj/item/clothing/shoes/sandals/geta
	req_islander = TRUE

/datum/crafting_recipe/leather/furlinedboots
	name = "shoes (fur lined boots)"
	result = /obj/item/clothing/shoes/boots/furlinedboots
	reqs = 	list(/obj/item/natural/hide = 1,
				/obj/item/natural/fur = 2)
	craftdiff = 1

/datum/crafting_recipe/leather/boots
	name = "shoes (leather boots) {ip}"
	result = /obj/item/clothing/shoes/boots/leather
	req_imperial = TRUE
	craftdiff = 1

/datum/crafting_recipe/leather/boots_short
	name = "shoes (short boots)"
	result = /obj/item/clothing/shoes/shortboots
	req_imperial = TRUE
	craftdiff = 1

/datum/crafting_recipe/leather/gladiator
	name = "shoes (gladiator sandals)"
	result = /obj/item/clothing/shoes/gladiator
	craftdiff = 2
	req_imperial = TRUE

/datum/crafting_recipe/leather/boots_noble
	name = "shoes (noble boots)"
	result = /obj/item/clothing/shoes/nobleboot
	req_imperial = TRUE
	craftdiff = 2

/datum/crafting_recipe/leather/boots_dark
	name = "shoes (riding boots)"
	result = /obj/item/clothing/shoes/ridingboots
	req_imperial = TRUE
	craftdiff = 2

/datum/crafting_recipe/leather/boots_dark
	name = "shoes (riding boots)"
	result = /obj/item/clothing/shoes/ridingboots
	req_imperial = TRUE
	craftdiff = 2

/datum/crafting_recipe/leather/boots_dark
	name = "shoes (dark boots)"
	result = /obj/item/clothing/shoes/boots
	req_imperial = TRUE
	craftdiff = 3

/datum/crafting_recipe/leather/boots_heavy
	name = "shoes (heavy leather boots)"
	result = /obj/item/clothing/shoes/boots/leather/heavy
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/reagent_containers/food/snacks/tallow = 1)
	craftdiff = 4

/datum/crafting_recipe/leather/boots_fencing
	name = "shoes (fencing boots)"
	result = /obj/item/clothing/shoes/boots/leather/fencing
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/ingot/iron = 1)
	craftdiff = 5


/*=========		GLOVES	==========*/
/datum/crafting_recipe/leather/gloves
	name = "gloves (leather)"
	result = /obj/item/clothing/gloves/leather

/datum/crafting_recipe/leather/abyssalgloves
	name = "gloves (abyssal)"
	result = /obj/item/clothing/gloves/leather/abyssal
	req_islander = TRUE

/datum/crafting_recipe/leather/falcon
	name = "gloves (falconry)"
	result = /obj/item/clothing/gloves/angle/falcon
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/natural/fur = 1)
	craftdiff = 1
	req_islander = TRUE

/datum/crafting_recipe/leather/heavygloves
	name = "gloves (heavy leather)"
	result = /obj/item/clothing/gloves/angle
	reqs = list(/obj/item/natural/hide/cured = 1,
				/obj/item/reagent_containers/food/snacks/tallow = 1)
	craftdiff = 2

/datum/crafting_recipe/leather/gloves_fencing
	name = "gloves (fencing)"
	result = /obj/item/clothing/gloves/fencer
	reqs = 	list(/obj/item/natural/hide/cured = 2)
	craftdiff = 4



/*=========		PANTS	==========*/
/datum/crafting_recipe/leather/pants
	name = "pants (leather)"
	result = list(/obj/item/clothing/pants/trou/leather)
	reqs = list(/obj/item/natural/hide/cured = 2)
	req_imperial = TRUE

/datum/crafting_recipe/leather/furtobi
	name = "pants (fur)"
	result = list(/obj/item/clothing/pants/trou/leather/fur)
	req_islander = TRUE

/datum/crafting_recipe/leather/pants_heavy
	name = "pants (heavy leather)"
	result = /obj/item/clothing/pants/leather/heavy
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/reagent_containers/food/snacks/tallow = 1)
	craftdiff = 4

/datum/crafting_recipe/leather/pants_padded
	name = "pants (padded leather)"
	result = /obj/item/clothing/pants/leather/padded
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/natural/cloth = 2)
	craftdiff = 5


/*=========		BRACERS	==========*/
/datum/crafting_recipe/leather/bracers
	name = "bracers (leather)"
	result = /obj/item/clothing/wrists/bracers/leather
	req_imperial = TRUE

/datum/crafting_recipe/leather/khudagach
	name = "bracers (archery)"
	result = /obj/item/clothing/wrists/bracers/leather/khudagach
	req_islander = TRUE

/datum/crafting_recipe/leather/bracers_hardened
	name = "bracers (heavy leather)"
	result = /obj/item/clothing/wrists/bracers/leather/hardened
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/reagent_containers/food/snacks/tallow = 1)
	craftdiff = 4


/*=========		HEAD & NECK	==========*/
/datum/crafting_recipe/leather/hood
	name = "hood"
	result = /obj/item/clothing/head/roguehood/brown
	reqs = list(/obj/item/natural/hide = 1)

/datum/crafting_recipe/leather/papakha
	name = "hat (papakha)"
	result = /obj/item/clothing/head/papakha
	reqs = list(/obj/item/natural/fur = 1)

/datum/crafting_recipe/leather/brimmedhat
	name = "hat (brimmed)"
	result = /obj/item/clothing/head/brimmed
	reqs = list(/obj/item/natural/hide = 1)



/datum/crafting_recipe/leather/malgai
	name = "helmet (malgai)"
	result = /obj/item/clothing/head/helmet/leather/malgai
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1
	req_islander = TRUE

/datum/crafting_recipe/leather/kaizokuhat
	name = "hat (heartfeltean)"
	result = /obj/item/clothing/head/helmet/leather/malgai/kaizoku
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1
	req_islander = TRUE

/datum/crafting_recipe/leather/kaizokuhat/female
	name = "hat (female heartfeltean)"
	result = /obj/item/clothing/head/helmet/leather/malgai/kaizoku/female
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1
	req_islander = TRUE

/datum/crafting_recipe/leather/arisan
	name = "helmet (cavalry headgear)"
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2
	req_islander = TRUE

/datum/crafting_recipe/leather/coif
	name = "coif (leather)"
	result = /obj/item/clothing/neck/coif
	craftdiff = 2

/datum/crafting_recipe/leather/helmet
	name = "helmet (leather)"
	result = /obj/item/clothing/head/helmet/leather
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1
	req_imperial = TRUE

/datum/crafting_recipe/leather/antlerhood
	name = "hood (antler)"
	result = /obj/item/clothing/head/antlerhood
	reqs = list(/obj/item/natural/hide = 1,
	/obj/item/natural/head/saiga = 1)
	craftdiff = 1

/datum/crafting_recipe/leather/hood_heavy
	name = "hood (heavy leather)"
	result = /obj/item/clothing/head/roguehood/random/heavy
	reqs = 	list(/obj/item/natural/hide/cured = 2, /obj/item/reagent_containers/food/snacks/tallow = 1)
	craftdiff = 4

