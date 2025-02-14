/* SEWING	-	sewing skill
==========================================================*/
// The only ingridients these recipes can require is CLOTH and FIBRE
// They all require a needle

/datum/crafting_recipe/roguetown/sewing
	tools = list(/obj/item/needle)
	skillcraft = /datum/skill/misc/sewing
	subtype_reqs = TRUE // so you can use any subtype of fur
	craftdiff = 0
	reqs = list(/obj/item/natural/fibers = 1, /obj/item/natural/cloth = 2)


/*========= NO SKILL LEVEL REQUIRED ==========*/

/datum/crafting_recipe/roguetown/sewing/bag
	name = "bag"
	result = /obj/item/storage/roguebag
	reqs = list(/obj/item/natural/fibers = 1,
				/obj/item/natural/cloth = 1)

/obj/item/storage/roguebag/crafted
	sellprice = 4
/datum/crafting_recipe/roguetown/sewing/burial_shroud
	name = "winding sheet"
	result = list(/obj/item/burial_shroud)

/datum/crafting_recipe/roguetown/sewing/loincloth
	name = "loincloth"
	result = list(/obj/item/clothing/under/roguetown/loincloth)
	reqs = list(/obj/item/natural/cloth = 1)

/datum/crafting_recipe/roguetown/sewing/clothgloves
	name = "gloves (fingerless)"
	result = list(/obj/item/clothing/gloves/roguetown/fingerless)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/fibers = 1)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/cmask
	name = "mask"
	result = list(/obj/item/clothing/mask/rogue/shepherd/clothmask)
	reqs = list(/obj/item/natural/cloth = 1)

/datum/crafting_recipe/roguetown/sewing/ragmask
	name = "mask (rag)"
	result = list(/obj/item/clothing/mask/rogue/shepherd/rag)
	reqs = list(/obj/item/natural/cloth = 1)

/datum/crafting_recipe/roguetown/sewing/linedanklet
	name = "cloth anklet"
	result = list(/obj/item/clothing/shoes/roguetown/boots/clothlinedanklets)

/datum/crafting_recipe/roguetown/sewing/Reyepatch
	name = "right eye patch"
	result = list(/obj/item/clothing/mask/rogue/eyepatch)

/datum/crafting_recipe/roguetown/sewing/Leyepatch
	name = "left eye patch"
	result = list(/obj/item/clothing/mask/rogue/eyepatch/left)

/datum/crafting_recipe/roguetown/sewing/bedsheetpelt
	name = "bedsheet (fur)"
	result = list(/obj/item/bedsheet/rogue/pelt)
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/sewing/sleepingbag
	name = "sleepcloth"
	result = list(/obj/item/sleepingbag)
	reqs =  list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/sewing/bedsheet
	name = "bedsheet"
	result = list(/obj/item/bedsheet/rogue/cloth)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 1

/*=========		CLOAK	==========*/
/datum/crafting_recipe/roguetown/sewing/jupon
	name = "cloak (jupon)"
	result = list(/obj/item/clothing/cloak/stabard/surcoat)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 1)
	craftdiff = 1
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/apron
	name = "cloak (apron)"
	result = list(/obj/item/clothing/cloak/apron)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/fibers = 1)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/tabard
	name = "cloak (tabard)"
	result = list(/obj/item/clothing/cloak/tabard)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 2
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/tabard/crusader
	name = "cloak (crusader tabard)"
	result = list(/obj/item/clothing/cloak/tabard/crusader)

/datum/crafting_recipe/roguetown/sewing/stabard
	name = "cloak (surcoat)"
	result = list(/obj/item/clothing/cloak/stabard)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 2
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/cape
	name = "cloak (cape)"
	result = list(/obj/item/clothing/cloak/cape)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 3
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/cape
	name = "cloak (desert cape)"
	result = /obj/item/clothing/cloak/cape/crusader
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 2)
	craftdiff = 3
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/tabard_templar
	name = "surcoat (templar)"
	result = list(/obj/item/clothing/cloak/stabard/templar)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 1)
	craftdiff = 2
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/tabard_templar/astrata
	name = "surcoat (solar)"
	result = list(/obj/item/clothing/cloak/stabard/templar/astrata)

/datum/crafting_recipe/roguetown/sewing/tabard_templar/necra
	name = "surcoat (necra)"
	result = list(/obj/item/clothing/cloak/stabard/templar/necra)

/datum/crafting_recipe/roguetown/sewing/tabard_templar/dendor
	name = "surcoat (dendor)"
	result = list(/obj/item/clothing/cloak/stabard/templar/dendor)

/datum/crafting_recipe/roguetown/sewing/tabard_templar/noc
	name = "surcoat (lunar)"
	result = list(/obj/item/clothing/cloak/stabard/templar/noc)

/datum/crafting_recipe/roguetown/sewing/tabard_templar/abyssor
	name = "surcoat (abyssal)"
	result = list(/obj/item/clothing/cloak/stabard/templar/abyssor)

/datum/crafting_recipe/roguetown/sewing/tabard_templar/malum
	name = "surcoat (malumite)"
	result = list(/obj/item/clothing/cloak/stabard/templar/malum)

/datum/crafting_recipe/roguetown/sewing/tabard_templar/eora
	name = "surcoat (eoran)"
	result = list(/obj/item/clothing/cloak/stabard/templar/eora)

/datum/crafting_recipe/roguetown/sewing/tabard_templar/pestra
	name = "surcoat (pestra)"
	result = list(/obj/item/clothing/cloak/stabard/templar/pestra)


/*=========		ARMOR	==========*/
/datum/crafting_recipe/roguetown/sewing/gambeson
	name = "armor (gambeson)"
	result = /obj/item/clothing/suit/roguetown/armor/gambeson
	reqs = list(/obj/item/natural/cloth = 4,
				/obj/item/natural/fibers = 2)
	craftdiff = 2
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/lgambeson
	name = "armor (light gambeson)"
	result = list(/obj/item/clothing/suit/roguetown/armor/gambeson/light)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 1)
	craftdiff = 1
//	req_imperial = TRUE
/datum/crafting_recipe/roguetown/sewing/stripedtunic
	name = "armor (padded tunic)"
	result = list(/obj/item/clothing/suit/roguetown/armor/gambeson/light/striped)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 1)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/armingjacket
	name = "armor (arming jacket)"
	result = list(/obj/item/clothing/suit/roguetown/armor/gambeson/arming)
	reqs = list(/obj/item/natural/cloth = 4,
				/obj/item/natural/fibers = 2)
//	req_imperial = TRUE
	craftdiff = 3

/datum/crafting_recipe/roguetown/sewing/armingjacket
	name = "armor (padded gambeson)"
	result = list(/obj/item/clothing/suit/roguetown/armor/gambeson/heavy)
	reqs = list(/obj/item/natural/cloth = 6,
				/obj/item/natural/fibers = 4)
//	req_imperial = TRUE
	craftdiff = 4

/datum/crafting_recipe/roguetown/sewing/robe
	name = "robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/plain)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 1)
	craftdiff = 2
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/robe/wizard
	name = "robes (wizard)"
	result = /obj/item/clothing/suit/roguetown/shirt/robe/wizard
	craftdiff = 3


/*========= CLOTHING ==========*/
/datum/crafting_recipe/roguetown/sewing/skirt_green
	name = "blue skirt"
	result = list(/obj/item/clothing/under/roguetown/skirt/blue)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 1
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/skirt_green
	name = "green skirt"
	result = list(/obj/item/clothing/under/roguetown/skirt/green)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 1
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/clothtrou
	name = "cloth trousers {ip}"
	result = list(/obj/item/clothing/under/roguetown/trou)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 1
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/dress
	name = "dress (plain)"
	result = list(/obj/item/clothing/suit/roguetown/shirt/dress/gen)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 1)
	craftdiff = 2
/datum/crafting_recipe/roguetown/sewing/dress/black
	name = "dress (black)"
	result = list(/obj/item/clothing/suit/roguetown/shirt/dress/gen/black)
/datum/crafting_recipe/roguetown/sewing/dress/blue
	name = "dress (blue)"
	result = list(/obj/item/clothing/suit/roguetown/shirt/dress/gen/blue)
/datum/crafting_recipe/roguetown/sewing/dress/purple
	name = "dress (purple))"
	result = list(/obj/item/clothing/suit/roguetown/shirt/dress/gen/purple)
/datum/crafting_recipe/roguetown/sewing/dress/sexy
	name = "dress (seductive)"
	result = list(/obj/item/clothing/suit/roguetown/shirt/dress/gen/sexy)
	craftdiff = 5


/datum/crafting_recipe/roguetown/sewing/undershirt
	name = "shirt (under)"
	result = /obj/item/clothing/suit/roguetown/shirt/undershirt/priest
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/fibers = 1)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/shortshirt
	name = "shirt (short)"
	result = list(/obj/item/clothing/suit/roguetown/shirt/shortshirt/uncolored)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/fibers = 1)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/clothshirt
	name = "shirt"
	result = list(/obj/item/clothing/suit/roguetown/shirt/undershirt/uncolored)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/rags
	name = "shirt (rags)"
	result = list(/obj/item/clothing/suit/roguetown/shirt/rags)
	reqs = list(/obj/item/natural/cloth = 2)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/clothtights
	name = "trousers (tights)"
	result = list(/obj/item/clothing/under/roguetown/tights/uncolored)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/tunic
	name = "shirt (tunic)"
	result = list(/obj/item/clothing/suit/roguetown/shirt/tunic/ucolored)
	reqs = list(/obj/item/natural/cloth = 2)
	craftdiff = 2
/datum/crafting_recipe/roguetown/sewing/tunic/lowcut
	name = "shirt (low-cut tunic)"
	result = list(/obj/item/clothing/suit/roguetown/shirt/undershirt/lowcut)




/*=========		HEADWEAR	==========*/
/datum/crafting_recipe/roguetown/sewing/pcoif
	name = "coif (padded)"
	result = list(/obj/item/clothing/neck/roguetown/coif/cloth)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/sewing/fisherhat
	name = "hat (fisher)"
	result = list(/obj/item/clothing/head/roguetown/fisherhat)
	reqs = list(/obj/item/natural/fibers = 1, /obj/item/natural/cloth = 1)
	tools = list(/obj/item/needle)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/sack
	name = "hat (sack hood)"
	result = list(/obj/item/clothing/head/roguetown/menacing)
	reqs = list(/obj/item/storage/roguebag)

/datum/crafting_recipe/roguetown/sewing/armingcap
	name = "hat (arming cap)"
	result = list(/obj/item/clothing/head/roguetown/armingcap)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/sewing/headband
	name = "hat (headband)"
	result = list(/obj/item/clothing/head/roguetown/headband)
	reqs = list(/obj/item/natural/cloth = 1)

/datum/crafting_recipe/roguetown/sewing/strawhat
	name = "hat (straw)"
	result = list(/obj/item/clothing/head/roguetown/strawhat)
	reqs = list(/obj/item/natural/fibers = 3)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/knitcap
	name = "hat (knit cap)"
	result = list(/obj/item/clothing/head/roguetown/knitcap)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/fibers = 1)
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/fancyhat
	name = "hat (fancy))"
	result = list(/obj/item/clothing/head/roguetown/fancyhat)
	reqs = list(/obj/item/natural/fibers = 1, /obj/item/natural/cloth = 2, /obj/item/natural/feather = 1)
	craftdiff = 4
//	req_imperial = TRUE

/datum/crafting_recipe/roguetown/sewing/fancyhat/courtier
	name = "hat (courtier)"
	result = /obj/item/clothing/head/roguetown/courtierhat

/datum/crafting_recipe/roguetown/sewing/fancyhat/courtier
	name = "hat (bard)"
	result = /obj/item/clothing/head/roguetown/bardhat

/datum/crafting_recipe/roguetown/sewing/armingcap
	name = "hat (wizard)"
	result = list(/obj/item/clothing/head/roguetown/wizhat)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 3




/* UNTIL KAIZOKU ADDED ROGTODO

//////////////////////////////////////////
// Fogislander Cultured Crafting Area,  //
//////////////////////////////////////////


/datum/crafting_recipe/roguetown/sewing/yugake
	name = "yugake gloves {fl}"
	result = list(/obj/item/clothing/gloves/roguetown/fingerless/yugake)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/fibers = 1)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/monkgarb
	name = "monk garbs {fl}"
	result = list(/obj/item/clothing/suit/roguetown/shirt/rags/monkgarb)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/fibers = 1)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/kimono
	name = "kimono {fl}"
	result = list(/obj/item/clothing/suit/roguetown/shirt/tunic/kimono)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/kamishimo
	name = "kamishimo upperside {fl}"
	result = list(/obj/item/clothing/suit/roguetown/shirt/tunic/kamishimo)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/hakama
	name = "hakama {fl}"
	result = list(/obj/item/clothing/under/roguetown/tights/hakama)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/takuhatsugasa
	name = "takuhatsugasa hat {fl}"
	result = list(/obj/item/clothing/head/roguetown/takuhatsugasa)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/torioigasa
	name = "torioigasa hat {fl}"
	result = list(/obj/item/clothing/head/roguetown/tengai/torioigasa)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 2)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/gasa
	name = "gasa hat {fl}"
	result = list(/obj/item/clothing/head/roguetown/tengai/gasa)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/lillys
	name = "small lilly {fl}"
	result = list(/obj/item/clothing/head/roguetown/lilly)
	reqs = list(/obj/item/natural/fibers = 3)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/lillym
	name = "medium lilly {fl}"
	result = list(/obj/item/clothing/head/roguetown/lilly/medium)
	reqs = list(/obj/item/natural/fibers = 4)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/lillyb
	name = "big lilly {fl}"
	result = list(/obj/item/clothing/head/roguetown/lilly/big)
	reqs = list(/obj/item/natural/fibers = 5)
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/eyeband
	name = "eyeband"
	result = list(/obj/item/clothing/mask/rogue/kaizoku/eyeband)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)

/datum/crafting_recipe/roguetown/sewing/tribal
	name = "tribal garb {fl}"
	result = list(/obj/item/clothing/under/roguetown/kaizoku/tribal)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
//	req_islander = TRUE

/*.............. recipes requiring skill 1 ..............*/

/datum/crafting_recipe/roguetown/sewing/tengai
	name = "tengai hat {fl}"
	result = list(/obj/item/clothing/head/roguetown/tengai)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 3)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/roningasa
	name = "roningasa hat {fl}"
	result = list(/obj/item/clothing/head/roguetown/tengai/roningasa)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 2)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/soheicloth
	name = "sohei headcovering {fl}"
	result = list(/obj/item/clothing/head/roguetown/soheicloth)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 2)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/sandogasa
	name = "sandogasa hat {fl}"
	result = list(/obj/item/clothing/head/roguetown/tengai/sandogasa)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 3)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/mino
	name = "mino cloak {fl}"
	result = list(/obj/item/clothing/cloak/raincloak/mino)
	reqs = list(/obj/item/natural/fibers = 8,
				/obj/item/natural/fibers = 2)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/tobi
	name = "tobi trousers {fl}"
	result = list(/obj/item/clothing/under/roguetown/trou/tobi)
	reqs = list(/obj/item/natural/cloth = 4,
				/obj/item/natural/fibers = 1)
	craftdiff = 1
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/hitatare
	name = "light hitatare {fl}"
	result = list(/obj/item/clothing/suit/roguetown/armor/gambeson/light/hitatare)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 1
//	req_islander = TRUE

/*.............. recipes requiring skill 2 ..............*/

/datum/crafting_recipe/roguetown/sewing/ruankai
	name = "ruankai jacque {fl}"
	result = /obj/item/clothing/suit/roguetown/armor/gambeson/ruankai
	reqs = list(/obj/item/natural/cloth = 4,
				/obj/item/natural/fibers = 1)
	tools = list(/obj/item/needle)
	craftdiff = 2
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/jinbaori
	name = "jinbaori {fl}"
	result = list(/obj/item/clothing/cloak/stabard/haramaki/jinbaori)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 1)
	craftdiff = 2
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/zukin
	name = "stealthy hood {fl}"
	result = list(/obj/item/clothing/head/roguetown/shinobi_zukin)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 1)
	craftdiff = 2
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/zubon
	name = "stealthy trousers {fl}"
	result = list(/obj/item/clothing/under/roguetown/trou/leather/shinobizubon)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/fibers = 2)
	craftdiff = 2
//	req_islander = TRUE

/*.............. recipes requiring skill 3 ..............*/

/datum/crafting_recipe/roguetown/sewing/onmyojigood
	name = "war onmyoji hat {fl}"
	result = list(/obj/item/clothing/head/roguetown/wizhat/onmyoji)
	reqs = list(/obj/item/natural/cloth = 4,
				/obj/item/natural/fibers = 3)
	craftdiff = 3
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/onmyojigoofy
	name = "onmyoji hat {fl}"
	result = list(/obj/item/clothing/head/roguetown/wizhat/onmyoji/eboshi)
	reqs = list(/obj/item/natural/cloth = 4,
				/obj/item/natural/fibers = 3)
	craftdiff = 3
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/guardiancape
	name = "guardianship cape {fl}"
	result = list(/obj/item/clothing/cloak/raincloak/guardiancloak)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 3
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/onmyojigoofy
	name = "haramaki bellyband {fl}"
	result = list(/obj/item/clothing/cloak/stabard/haramaki)
	reqs = list(/obj/item/natural/cloth = 4,
				/obj/item/natural/fibers = 3)
	craftdiff = 3
//	req_islander = TRUE

/* .............. recipes requiring skill 4 ..............*/

/datum/crafting_recipe/roguetown/sewing/heartfelthat
	name = "heartfelt hat {fl}"
	result = list(/obj/item/clothing/head/roguetown/bardhat/bloodhunter)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 4
//	req_islander = TRUE

/datum/crafting_recipe/roguetown/sewing/odoshi
	name = "odoshi bodylacing {fl}"
	result = list(/obj/item/clothing/cloak/stabard/haramaki/odoshi)
	reqs = list(/obj/item/natural/cloth = 5,
				/obj/item/natural/fibers = 3)
	craftdiff = 4
//	req_islander = TRUE
*/
