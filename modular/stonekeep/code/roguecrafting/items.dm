/* CRAFTING	uses the Crafting skill, natch. Pretty much every recipe that doesn't fit somewhere else.
==========================================================*/

/datum/crafting_recipe/roguetown
	always_availible = TRUE
	skillcraft = /datum/skill/craft/crafting
	craftdiff = 0

/*========= NO SKILL LEVEL REQUIRED ==========*/

/datum/crafting_recipe/roguetown/torch
	name = "torch"
	result = /obj/item/flashlight/flare/torch
	reqs = list(/obj/item/grown/log/tree/stick = 1,
				/obj/item/natural/fibers = 1)

/datum/crafting_recipe/roguetown/tneedle
	name = "sewing needle"
	result = /obj/item/needle/thorn
	reqs = list(/obj/item/natural/thorn = 1,
				/obj/item/natural/fibers = 1)

/datum/crafting_recipe/roguetown/cloth
	name = "cloth"
	result = /obj/item/natural/cloth
	reqs = list(/obj/item/natural/fibers = 2)
	tools = list(/obj/item/needle)
	skillcraft = /datum/skill/misc/sewing
	verbage = "sew"
	verbage_tp = "sews"

/datum/crafting_recipe/roguetown/pipe
	name = "wood pipe"
	result = /obj/item/clothing/mask/cigarette/pipe
	reqs = list(/obj/item/grown/log/tree/stick = 2)

/datum/crafting_recipe/roguetown/sigdry
	name = "westleach zig"
	result = /obj/item/clothing/mask/cigarette/rollie/nicotine
	reqs = list(/obj/item/reagent_containers/food/snacks/produce/dry_westleach = 1,
				/obj/item/paper = 1)
	time = 10 SECONDS
	verbage = "roll"
	verbage_tp = "rolls"

/datum/crafting_recipe/roguetown/sigsweet
	name = "swampweed zig"
	result = /obj/item/clothing/mask/cigarette/rollie/cannabis
	reqs = list(/obj/item/reagent_containers/food/snacks/produce/swampweed_dried = 1,
				/obj/item/paper = 1)
	time = 10 SECONDS
	verbage = "roll"
	verbage_tp = "rolls"

/datum/crafting_recipe/roguetown/dart
	name = "dart"
	result = /obj/item/ammo_casing/caseless/rogue/dart
	reqs = list(/obj/item/natural/thorn = 1,
				/obj/item/grown/log/tree/stick = 1)

/datum/crafting_recipe/roguetown/blowgun
	name = "blowgun"
	result = /obj/item/gun/ballistic/revolver/grenadelauncher/blowgun
	reqs = list(/obj/item/grown/log/tree/stick = 1)
	craftdiff = 3


	verbage_tp  = "unties"

/datum/crafting_recipe/roguetown/rope
	name = "rope"
	result = /obj/item/rope
	reqs = list(/obj/item/natural/fibers = 3)
	verbage = "braid"
	verbage_tp = "braids"

/datum/crafting_recipe/roguetown/zigbox
	name = "paper zigbox"
	result = list(/obj/item/storage/fancy/cigarettes/zig/empty)
	reqs = list(/obj/item/paper = 1)


/*========= HUNTING ==========*/
/datum/crafting_recipe/roguetown/rod
	name = "fishing rod"
	result = /obj/item/fishingrod
	reqs = list(/obj/item/grown/log/tree/small = 1,
		/obj/item/natural/fibers = 2)
	tools = list(/obj/item/rogueweapon/knife)
	craftdiff = 1

/datum/crafting_recipe/roguetown/bait
	name = "bait"
	result = /obj/item/bait
	reqs = list(/obj/item/storage/roguebag = 1,
				/obj/item/reagent_containers/food/snacks/produce/wheat = 2)
	subtype_reqs = TRUE

/datum/crafting_recipe/roguetown/sbaita
	name = "sweetbait (apple)"
	result = /obj/item/bait/sweet
	reqs = list(/obj/item/storage/roguebag = 1,
				/obj/item/reagent_containers/food/snacks/produce/apple = 2)
	subtype_reqs = TRUE

/datum/crafting_recipe/roguetown/sbait
	name = "sweetbait (berry)"
	result = /obj/item/bait/sweet
	reqs = list(/obj/item/storage/roguebag = 1,
				/obj/item/reagent_containers/food/snacks/produce/jacksberry = 2)
	subtype_reqs = TRUE

/datum/crafting_recipe/roguetown/bloodbait
	name = "bloodbait"
	result = /obj/item/bait/bloody
	reqs = list(/obj/item/storage/roguebag = 1,
				/obj/item/reagent_containers/food/snacks/rogue/meat = 1)
	subtype_reqs = TRUE

/datum/crafting_recipe/roguetown/earnecklace
	name = "ear necklace"
	result = /obj/item/clothing/neck/roguetown/menears
	reqs = list(/obj/item/organ/ears = 4,
				/obj/item/rope = 1)

/datum/crafting_recipe/roguetown/elfearnecklace
	name = "elf ear necklace"
	result = /obj/item/clothing/neck/roguetown/elfears
	reqs = list(/obj/item/organ/ears = 4,
				/obj/item/rope = 1)

/*========= FISHING ==========*/
/datum/crafting_recipe/roguetown/fishbait
	name = "fishbait (red)"
	result = list(/obj/item/fishing/bait/meat,
				/obj/item/fishing/bait/meat)
	reqs = list(/obj/item/reagent_containers/food/snacks/rogue/meat/mince = 1)
	subtype_reqs = TRUE
	verbage = "starts rolling some bait"
	verbage_tp = "starts rolling some bait"

/datum/crafting_recipe/roguetown/fishbait/dough
	name = "fishbait (dough)"
	result = list(/obj/item/fishing/bait/dough,
				/obj/item/fishing/bait/dough)
	reqs = list(/obj/item/reagent_containers/food/snacks/rogue/doughslice = 1)

/datum/crafting_recipe/roguetown/fishreel
	name = "fishing line (fibre)"
	result = /obj/item/fishing/reel/twine
	reqs = list(/obj/item/natural/fibers = 2, /obj/item/grown/log/tree/stick = 1)
	verbage ="starts weaving a reel"
	verbage_tp ="starts weaving a reel"

/datum/crafting_recipe/roguetown/fishreel/silk
	name = "fishing line (silk)"
	result = /obj/item/fishing/reel/silk
	reqs = list(/obj/item/natural/silk = 1, /obj/item/grown/log/tree/stick = 1)

/datum/crafting_recipe/roguetown/fishreel/leather
	name = "fishing line (leather)"
	result = /obj/item/fishing/reel/leather
	reqs = list(/obj/item/natural/hide = 1, /obj/item/grown/log/tree/stick = 1)

/datum/crafting_recipe/roguetown/fishbobber
	name = "fishing bobber (wood)"
	result = /obj/item/fishing/line/bobber
	reqs = list(/obj/item/natural/fibers = 1, /obj/item/grown/log/tree/stick = 1)

/datum/crafting_recipe/roguetown/fishsinker
	name = "fishing sinker (stone)"
	result = /obj/item/fishing/line/sinker
	reqs = list(/obj/item/natural/fibers = 1, /obj/item/natural/stone = 1)

/datum/crafting_recipe/roguetown/fishhook
	name = "fishing hook (wood)"
	result = /obj/item/fishing/line/sinker
	reqs = list(/obj/item/grown/log/tree/stick = 2)

/datum/crafting_recipe/roguetown/fishhook/thorn
	name = "fishing hook (thorn)"
	result = /obj/item/fishing/line/sinker
	reqs = list(/obj/item/natural/thorn = 1)




/*========= SKILL LEVEL: 1 REQUIRED ==========*/
/datum/crafting_recipe/roguetown/candle
	name = "candle (x2)"
	result = list(/obj/item/candle/yellow,
				/obj/item/candle/yellow)
	reqs = list(/obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/basket_wicker
	name = "basket (wicker)"
	result = /obj/structure/closet/crate/chest/wicker
	reqs = list(/obj/item/natural/fibers = 4)
	craftdiff = 1

/datum/crafting_recipe/roguetown/broom
	name = "broom"
	result = /obj/item/broom
	reqs = list(/obj/item/natural/fibers = 1,
			/obj/item/grown/log/tree/stick = 4)
	craftdiff = 1





/*========= ALCHEMY ==========*/
/datum/crafting_recipe/roguetown/pestle
	name = "pestle (stone)"
	result = /obj/item/pestle
	reqs = list(/obj/item/natural/stone = 1)
	tools = list(/obj/item/rogueweapon/chisel)
	verbage = "crafts"
	skillcraft = /datum/skill/craft/masonry

/datum/crafting_recipe/roguetown/pestle/bone
	name = "pestle (bone)"
	reqs = list(/obj/item/alch/bone = 1)
	tools = /obj/item/rogueweapon/knife
	subtype_reqs = TRUE
	skillcraft = /datum/skill/craft/crafting

/datum/crafting_recipe/roguetown/alchmortar
	name = "alchemical mortar (stone)"
	result = /obj/item/mortar
	reqs = list(/obj/item/natural/stone = 3)
	tools = list(/obj/item/rogueweapon/chisel)
	verbage = "crafts"
	skillcraft = /datum/skill/craft/masonry

/datum/crafting_recipe/roguetown/alchmortar/bone
	name = "alchemical mortar (bone)"
	reqs = list(/obj/item/alch/bone = 3)
	tools = /obj/item/rogueweapon/knife
	subtype_reqs = TRUE
	skillcraft = /datum/skill/craft/crafting


/*========= AMMO CRAFTING ==========*/
/datum/crafting_recipe/roguetown/stonearrow
	name = "stone arrow (x2)"
	result = list(/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone)
	reqs = list(/obj/item/grown/log/tree/stick = 1,
				/obj/item/natural/stone = 1)
	req_table = TRUE

/datum/crafting_recipe/roguetown/stonearrow_five
	name = "stone arrow (x10)"
	result = list(
				/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone,
				/obj/item/ammo_casing/caseless/rogue/arrow/stone)
	reqs = list(/obj/item/grown/log/tree/stick = 5,
				/obj/item/natural/stone = 5)

/datum/crafting_recipe/roguetown/poisonarrow
	name = "poison arrow"
	result = /obj/item/ammo_casing/caseless/rogue/arrow/poison
	reqs = list(/obj/item/ammo_casing/caseless/rogue/arrow = 1,
				/obj/item/reagent_containers/food/snacks/produce/jacksberry/poison = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/poisonarrow/alt
	reqs = list(/obj/item/ammo_casing/caseless/rogue/arrow = 1,
				/datum/reagent/berrypoison = 5)

/datum/crafting_recipe/roguetown/poisonarrow/potent
	name = "poison arrow (potent)"
	result = /obj/item/ammo_casing/caseless/rogue/arrow/poison/potent
	reqs = list(/obj/item/ammo_casing/caseless/rogue/arrow = 1,
				/datum/reagent/strongpoison = 5)

/datum/crafting_recipe/roguetown/poisonbolt
	name = "poison bolt"
	result = /obj/item/ammo_casing/caseless/rogue/bolt/poison
	reqs = list(/obj/item/ammo_casing/caseless/rogue/bolt = 1,
				/obj/item/reagent_containers/food/snacks/produce/jacksberry/poison = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/poisonbolt/alt
	reqs = list(/obj/item/ammo_casing/caseless/rogue/bolt = 1,
				/datum/reagent/berrypoison = 5)

/datum/crafting_recipe/roguetown/poisonbolt/potent
	name = "poison bolt (potent)"
	result = /obj/item/ammo_casing/caseless/rogue/bolt/poison/potent
	reqs = list(/obj/item/ammo_casing/caseless/rogue/bolt = 1,
				/datum/reagent/strongpoison = 5)

/datum/crafting_recipe/roguetown/shinobiarrow
	name = "shinobi arrow(5)"
	result = list(/obj/item/ammo_casing/caseless/rogue/arrow/poison/fog,
			/obj/item/ammo_casing/caseless/rogue/arrow/poison/fog,
			/obj/item/ammo_casing/caseless/rogue/arrow/poison/fog,
			/obj/item/ammo_casing/caseless/rogue/arrow/poison/fog,
			/obj/item/ammo_casing/caseless/rogue/arrow/poison/fog)
	reqs = list(/obj/item/ammo_casing/caseless/rogue/arrow = 5,
				/obj/item/reagent_containers/food/snacks/fogdart = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/shinobibolt
	name = "sedative bolt(5)"
	result = list(/obj/item/ammo_casing/caseless/rogue/bolt/poison/fog,
			/obj/item/ammo_casing/caseless/rogue/bolt/poison/fog,
			/obj/item/ammo_casing/caseless/rogue/bolt/poison/fog,
			/obj/item/ammo_casing/caseless/rogue/bolt/poison/fog,
			/obj/item/ammo_casing/caseless/rogue/bolt/poison/fog)
	reqs = list(/obj/item/ammo_casing/caseless/rogue/bolt = 5,
				/obj/item/reagent_containers/food/snacks/fogdart = 1)
	craftdiff = 1

/*========= ENGINEEERING CRAFTING ==========*/
/datum/crafting_recipe/roguetown/mantrap
	name = "mantrap"
	result = list(/obj/item/restraints/legcuffs/beartrap,
				/obj/item/restraints/legcuffs/beartrap)
	reqs = list(/obj/item/grown/log/tree/small = 1,
				/obj/item/natural/fibers = 2,
				/obj/item/ingot/iron = 1)
	req_table = TRUE
	skillcraft = /datum/skill/craft/traps
	craftdiff = 1
	verbage = "put together"
	verbage_tp = "puts together"

/datum/crafting_recipe/roguetown/flint
	name = "flint"
	result = /obj/item/flint
	reqs = list(
			/obj/item/natural/stone = 1,
			/obj/item/ingot/iron = 1)
	skillcraft = /datum/skill/craft/engineering
	craftdiff = 0 // Something to practice engineering with.

/datum/crafting_recipe/roguetown/pyroarrow
	name = "pyroclastic arrow"
	result = /obj/item/ammo_casing/caseless/rogue/arrow/pyro
	reqs = list(/obj/item/ammo_casing/caseless/rogue/arrow = 1,
				/obj/item/reagent_containers/food/snacks/produce/fyritius = 1)
	craftdiff = 1
	skillcraft = /datum/skill/craft/engineering

/datum/crafting_recipe/roguetown/pyrobolt
	name = "pyroclastic bolt"
	result = /obj/item/ammo_casing/caseless/rogue/bolt/pyro
	reqs = list(/obj/item/ammo_casing/caseless/rogue/bolt = 1,
				/obj/item/reagent_containers/food/snacks/produce/fyritius = 1)
	craftdiff = 1
	skillcraft = /datum/skill/craft/engineering

/datum/crafting_recipe/roguetown/bomb
	name = "bomb"
	result = /obj/item/bomb/homemade
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/reagent_containers/food/snacks/produce/fyritius = 1,
				/obj/item/reagent_containers/glass/bottle = 1)
	craftdiff = 2
	skillcraft = /datum/skill/craft/bombs
	subtype_reqs = TRUE

/*========= LITERATURE CRAFTING ==========*/
/datum/crafting_recipe/roguetown/paperscroll
	name = "parchment scroll x5"
	result = list(/obj/item/paper/scroll,
				/obj/item/paper/scroll,
				/obj/item/paper/scroll,
				/obj/item/paper/scroll,
				/obj/item/paper/scroll)
	reqs = list(/obj/item/grown/log/tree/small = 1,
	/datum/reagent/water = 50)
	tools = list(/obj/item/rogueweapon/knife/hunting)
	structurecraft = /obj/structure/fluff/dryingrack
	craftdiff = 1

/datum/crafting_recipe/roguetown/readingscroll
	name = "novice's guide to literature"
	result = list(/obj/item/literary)
	reqs = list(/obj/item/paper/scroll = 3)
	tools = list(/obj/item/natural/feather)
	req_table = TRUE
	skillcraft = /datum/skill/misc/reading
	craftdiff = 2
	verbage = "write"
	verbage_tp  = "writes"

/datum/crafting_recipe/roguetown/readingscroll/apprentice
	name = "apprentice's guide to literature"
	result = list(/obj/item/literary/apprentice)
	craftdiff = 3

/datum/crafting_recipe/roguetown/readingscroll/journeyman
	name = "journeyman's guide to literature"
	result = list(/obj/item/literary/journeyman)
	craftdiff = 4

/datum/crafting_recipe/roguetown/readingscroll/expert
	name = "expert's guide to literature"
	result = list(/obj/item/literary/expert)
	craftdiff = 5

/datum/crafting_recipe/roguetown/readingscroll/master
	name = "master's guide to literature"
	result = list(/obj/item/literary/master)
	craftdiff = 6

/datum/crafting_recipe/roguetown/parchment_scroll
	name = "parchment scroll"
	result = /obj/item/paper/scroll
	reqs = list(/obj/item/paper = 3)

/datum/crafting_recipe/roguetown/confessional
	name = "confession"
	result = /obj/item/paper/confession
	reqs = list(/obj/item/paper = 1)
	tools = list(/obj/item/natural/feather)
	skillcraft = /datum/skill/misc/reading
	always_availible = FALSE
	craftsound = null
	craftdiff = 0


/*========= COOKING ==========*/
/datum/crafting_recipe/roguetown/rollingpin
	name = "rollingpin"
	result = /obj/item/kitchen/rollingpin
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/roguetown/woodbucket
	name = "bucket"
	result = /obj/item/reagent_containers/glass/bucket/wooden
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/roguetown/woodbowl
	name = "bowls (x3 wooden)"
	result = list(/obj/item/reagent_containers/glass/bowl,
				/obj/item/reagent_containers/glass/bowl,
				/obj/item/reagent_containers/glass/bowl)
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/roguetown/woodcup
	name = "mugs (x3 wooden)"
	result = list(/obj/item/reagent_containers/glass/cup/wooden/crafted,
				/obj/item/reagent_containers/glass/cup/wooden/crafted,
				/obj/item/reagent_containers/glass/cup/wooden/crafted)
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/roguetown/woodtray
	name = "wooden trays (x2)"
	result = list(/obj/item/storage/bag/tray,
				/obj/item/storage/bag/tray)
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/roguetown/woodplatter
	name = "platters (x2 wooden)"
	result = list(/obj/item/cooking/platter,
				/obj/item/cooking/platter)
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/roguetown/pot_stone
	name = "cooking pot (stone)"
	result = list(/obj/item/reagent_containers/glass/bucket/pot/stone)
	reqs = list(/obj/item/natural/stone = 2)



// ---------	WEAPONS		-------------
/datum/crafting_recipe/roguetown/recurve
	name = "recurve bow"
	result = list(/obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve)
	reqs = list(/obj/item/grown/log/tree/small = 1,
	/obj/item/natural/fibers = 4)
	craftdiff = 1
	skillcraft = /datum/skill/craft/carpentry

/datum/crafting_recipe/roguetown/handmadebow
	name = "wooden bow"
	result = list(/obj/item/gun/ballistic/revolver/grenadelauncher/bow)
	reqs = list(/obj/item/grown/log/tree/small = 1,
	/obj/item/natural/fibers = 6)
	craftdiff = 2
	skillcraft = /datum/skill/craft/carpentry

/datum/crafting_recipe/roguetown/longbow
	name = "longbow"
	result = list(/obj/item/gun/ballistic/revolver/grenadelauncher/bow/long)
	reqs = list(/obj/item/grown/log/tree/small = 1,
	/obj/item/natural/fibers = 8,
	/obj/item/reagent_containers/food/snacks/fat = 1)
	skillcraft = /datum/skill/craft/carpentry
	structurecraft = /obj/machinery/light/rogue/campfire
	craftdiff = 3


/datum/crafting_recipe/roguetown/woodstaff//this is the simple staff anyone can make
	name = "wood staff"
	result = list(/obj/item/rogueweapon/polearm/woodstaff,
	/obj/item/rogueweapon/polearm/woodstaff,
	/obj/item/rogueweapon/polearm/woodstaff)
	reqs = list(/obj/item/grown/log/tree = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/stoneaxe
	name = "stone axe"
	result = /obj/item/rogueweapon/axe/stone
	reqs = list(/obj/item/grown/log/tree/small = 1,
				/obj/item/natural/stone = 1)

/datum/crafting_recipe/roguetown/stoneknife
	name = "stone knife"
	result = /obj/item/rogueweapon/knife/stone
	reqs = list(/obj/item/grown/log/tree/stick = 1,
				/obj/item/natural/stone = 1)

/datum/crafting_recipe/roguetown/stonespear
	name = "stone spear"
	result = /obj/item/rogueweapon/polearm/spear/stone
	reqs = list(/obj/item/rogueweapon/polearm/woodstaff = 1,
				/obj/item/natural/stone = 1)

/datum/crafting_recipe/roguetown/woodclub
	name = "wood club"
	result = /obj/item/rogueweapon/mace/woodclub
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/roguetown/quarterstaff
	name = "quarterstaff"
	result = list(/obj/item/rogueweapon/polearm/woodstaff/quarterstaff,
	/obj/item/rogueweapon/polearm/woodstaff/quarterstaff)
	reqs = list(/obj/item/grown/log/tree = 1)
	req_table = TRUE
	tools = list(/obj/item/rogueweapon/knife/hunting)
	skillcraft = /datum/skill/craft/carpentry

/datum/crafting_recipe/roguetown/steelstaff
	name = "quarterstaff (steel)"
	skillcraft = /datum/skill/craft/carpentry
	reqs = list(/obj/item/rogueweapon/polearm/woodstaff/quarterstaff = 1, /obj/item/ingot/steel = 1)
	result = list(/obj/item/rogueweapon/polearm/woodstaff/quarterstaff/steel)
	craftdiff = 3

/datum/crafting_recipe/roguetown/ironstaff
	name = "quarterstaff (iron)"
	skillcraft = /datum/skill/craft/carpentry
	reqs = list(/obj/item/rogueweapon/polearm/woodstaff/quarterstaff = 1, /obj/item/ingot/iron = 1)
	tools = list(/obj/item/rogueweapon/hammer)
	result = list(/obj/item/rogueweapon/polearm/woodstaff/quarterstaff/iron)
	craftdiff = 2


/datum/crafting_recipe/roguetown/woodengreatflail
	name = "thresher"
	skillcraft = /datum/skill/craft/carpentry
	reqs = list(/obj/item/rope = 1,
			/obj/item/grown/log/tree/stick = 1, /obj/item/grown/log/tree/small = 1)
	tools = list(/obj/item/rogueweapon/hammer)
	req_table = TRUE
	result = list(/obj/item/rogueweapon/thresher)
	craftdiff = 1

/datum/crafting_recipe/roguetown/bigflail
	name = "militia flail"
	skillcraft = /datum/skill/craft/carpentry
	reqs = list(/obj/item/rope/chain = 1,
			/obj/item/rogueweapon/thresher = 1)
	tools = list(/obj/item/rogueweapon/hammer)
	req_table = TRUE
	result = list(/obj/item/rogueweapon/thresher/military)
	craftdiff = 2

/datum/crafting_recipe/roguetown/ironcudgel
	name = "studded club"
	skillcraft = /datum/skill/craft/carpentry
	reqs = list(/obj/item/grown/log/tree/small = 1, /obj/item/ingot/iron = 1)
	tools = list(/obj/item/rogueweapon/hammer)
	req_table = TRUE
	result = list(/obj/item/rogueweapon/mace/cudgel/carpenter, /obj/item/rogueweapon/mace/cudgel/carpenter)
	craftdiff = 2

/datum/crafting_recipe/roguetown/bonespear
	name = "bone spear"
	result = /obj/item/rogueweapon/polearm/spear/bonespear
	reqs = list(/obj/item/rogueweapon/polearm/woodstaff = 1,
				/obj/item/alch/bone = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 3

/datum/crafting_recipe/roguetown/kusaripeasant
	name = "handmade kusarigama"
	result = /obj/item/rogueweapon/flail/kusarigama/peasant
	reqs = list(/obj/item/rogueweapon/sickle/kama = 1,
				/obj/item/rope/chain = 1)
	craftdiff = 1


// ---------	CLOTHING		-------------
/datum/crafting_recipe/roguetown/skullmask
	name = "skull mask"
	result = /obj/item/clothing/mask/rogue/skullmask
	reqs = list(/obj/item/alch/bone = 3,
				/obj/item/natural/fibers = 1)
	sellprice = 10
	verbage = "crafted"
	craftdiff = 0

/datum/crafting_recipe/roguetown/antlerhood
	name = "antlerhood"
	result = /obj/item/clothing/head/roguetown/antlerhood
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/alch/bone = 2)
	sellprice = 12
	tools = list(/obj/item/needle)
	skillcraft = /datum/skill/misc/sewing
	verbage = "sews"
	craftdiff = 0

/datum/crafting_recipe/roguetown/wickercloak
	name = "wickercloak"
	result = /obj/item/clothing/cloak/wickercloak
	reqs = list(/obj/item/natural/dirtclod = 1,
				/obj/item/grown/log/tree/stick = 5,
				/obj/item/natural/fibers = 3)
	craftdiff = 1

/datum/crafting_recipe/roguetown/bogcowl
	name = "bogcowl"
	result = /obj/item/clothing/neck/roguetown/bogcowl
	reqs = list(/obj/item/natural/dirtclod = 1,
				/obj/item/grown/log/tree/stick = 3,
				/obj/item/natural/fibers = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/clothsash
	name = "cloth sash"
	result = /obj/item/storage/belt/rogue/leather/cloth
	reqs = list(/obj/item/natural/cloth = 1)
	verbage = "tie"
	verbage_tp = "ties"

/datum/crafting_recipe/roguetown/unclothsash
	name = "untie cloth sash"
	result = /obj/item/natural/cloth
	reqs = list(/obj/item/storage/belt/rogue/leather/cloth = 1)
	verbage = "untie"
	verbage_tp = "unties"

/datum/crafting_recipe/roguetown/ropebelt
	name = "rope belt"
	result = /obj/item/storage/belt/rogue/leather/rope
	reqs = list(/obj/item/rope = 1)
	verbage = "untie"
	verbage_tp  = "unties"

/datum/crafting_recipe/roguetown/unropebelt
	name = "untie rope belt"
	result = /obj/item/rope
	reqs = list(/obj/item/storage/belt/rogue/leather/rope = 1)
	verbage = "untie"


// ---------	LUMBERJACKING RECIPE		-------------
/datum/crafting_recipe/roguetown/lumberjacking
	skillcraft = /datum/skill/labor/lumberjacking
	tools = list(/obj/item/rogueweapon/knife/hunting = 1)

/datum/crafting_recipe/roguetown/lumberjacking/cart_upgrade
	name = "upgrade cog"
	result = /obj/item/cart_upgrade/level_1
	reqs = list(/obj/item/grown/log/tree/small = 2,
				/obj/item/natural/stone = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/lumberjacking/cart_upgrade2
	name = "advanced upgrade cog"
	result = /obj/item/cart_upgrade/level_2
	reqs = list(/obj/item/grown/log/tree/small = 4,
				/obj/item/cart_upgrade/level_1 = 1,
				/obj/item/ingot/iron = 1)
	craftdiff = 4

/datum/crafting_recipe/roguetown/wood_hammer
	name = "wooden mallet"
	result = /obj/item/rogueweapon/hammer/wood
	reqs = list(/obj/item/grown/log/tree/small = 1)
	craftdiff = 0


/datum/crafting_recipe/roguetown/wpsycross
	name = "handheld psycross"
	reqs = list(/obj/item/grown/log/tree/small = 1)
	result = /obj/item/clothing/neck/roguetown/psycross
	craftdiff = 0

/datum/crafting_recipe/roguetown/impsaw
	name = "surgery (crude saw)"
	result = /obj/item/rogueweapon/surgery/saw/improv
	reqs = list(/obj/item/natural/fibers = 1, /obj/item/natural/stone = 1, /obj/item/grown/log/tree/stick = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/impretra
	name = "surgery (crude clamp)"
	result = /obj/item/rogueweapon/surgery/hemostat/improv
	reqs = list(/obj/item/natural/fibers = 1, /obj/item/grown/log/tree/stick = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/imphemo
	name = "surgery (crude retractor)"
	result = /obj/item/rogueweapon/surgery/retractor/improv
	reqs = list(/obj/item/natural/fibers = 1, /obj/item/grown/log/tree/stick = 2)
	craftdiff = 1

// ---------	PAINTING		-------------
/datum/crafting_recipe/roguetown/canvas
	name = "painting (canvas)"
	result = /obj/item/canvas
	reqs = list(/obj/item/paper = 3)
	craftdiff = 1

/datum/crafting_recipe/roguetown/paintbrush
	name = "painting (brush)"
	result = /obj/item/paint_brush
	reqs = list(/obj/item/grown/log/tree/stick = 1,
		/obj/item/natural/feather = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/palette
	name = "painting (palette)"
	result = /obj/item/paint_palette
	reqs = list(/obj/item/grown/log/tree/stick = 1,
		/obj/item/natural/wood/plank = 1)
	craftdiff = 1


