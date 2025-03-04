/* CARPENTRY is for pretty much any object made of wood. To see some wooden structures that also use carpentry, go to structure.dm.
==========================================================*/

/datum/crafting_recipe/carpentry
	skillcraft = /datum/skill/craft/carpentry
	subtype_reqs = TRUE
	craftdiff = 0

/*========= NO SKILL LEVEL REQUIRED ==========*/

/datum/crafting_recipe/carpentry/woodbucket
	name = "bucket"
	result = /obj/item/reagent_containers/glass/bucket/wooden
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/carpentry/spoon
	name = "spoon"
	result = list(/obj/item/kitchen/spoon,
				/obj/item/kitchen/spoon)
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/carpentry/rollingpin
	name = "rollingpin"
	result = /obj/item/kitchen/rollingpin
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/carpentry/woodbowl
	name = "bowls (x3 wooden)"
	result = list(/obj/item/reagent_containers/glass/bowl,
				/obj/item/reagent_containers/glass/bowl,
				/obj/item/reagent_containers/glass/bowl)
	reqs = list(/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/carpentry/woodcup
	name = "mugs (x3 wooden)"
	result = list(/obj/item/reagent_containers/glass/cup/wooden/crafted,
				/obj/item/reagent_containers/glass/cup/wooden/crafted,
				/obj/item/reagent_containers/glass/cup/wooden/crafted)
	reqs = list(/obj/item/grown/log/tree/small = 1)

/obj/item/reagent_containers/glass/cup/wooden/crafted
	sellprice = 3

/datum/crafting_recipe/carpentry/woodplatter
	name = "platters (x2 wooden)"
	result = list(/obj/item/kitchen/platter,
				/obj/item/kitchen/platter)
	reqs = list(/obj/item/grown/log/tree/small = 1)

/*========= SKILL LEVEL: 1 REQUIRED ==========*/

/datum/crafting_recipe/carpentry/woodsword
	name = "wood sword"
	result = list(/obj/item/weapon/mace/woodclub/train_sword,
					/obj/item/weapon/mace/woodclub/train_sword)
	reqs = list(/obj/item/grown/log/tree/small = 1,
				/obj/item/natural/fibers = 1)
	craftdiff = 1

/datum/crafting_recipe/carpentry/quarterstaff//elaborated quarterstaff only carpenters can do
	name = "quarterstaff"
	result = list(/obj/item/weapon/polearm/woodstaff/quarterstaff,
	/obj/item/weapon/polearm/woodstaff/quarterstaff)
	reqs = list(/obj/item/grown/log/tree = 1)
	req_table = TRUE
	tools = list(/obj/item/weapon/knife)
	craftdiff = 2

/datum/crafting_recipe/woodspade
	name = "spade"
	result = /obj/item/weapon/shovel/small
	reqs = list(/obj/item/grown/log/tree/small = 1,
			/obj/item/grown/log/tree/stick = 1)
	craftdiff = 1

/obj/item/weapon/shovel/small/crafted
	sellprice = 5


/*========= SKILL LEVEL: 2 REQUIRED ==========*/


/datum/crafting_recipe/carpentry/recurve
	name = "bow (recurve)"
	result = list(/obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve)
	reqs = list(/obj/item/grown/log/tree/small = 1,
	/obj/item/reagent_containers/food/snacks/fat = 1,
	/obj/item/natural/fibers = 4)
	craftdiff = 2

/datum/crafting_recipe/carpentry/handmadebow
	name = "bow"
	result = list(/obj/item/gun/ballistic/revolver/grenadelauncher/bow)
	reqs = list(/obj/item/grown/log/tree/small = 1,
	/obj/item/natural/fibers = 5)
	craftdiff = 2

/datum/crafting_recipe/carpentry/longbow
	name = "bow (longbow)"
	result = list(/obj/item/gun/ballistic/revolver/grenadelauncher/bow/long)
	reqs = list(/obj/item/grown/log/tree/small = 2,
	/obj/item/natural/fibers = 6,
	/obj/item/reagent_containers/food/snacks/fat = 1)
	craftdiff = 3


/datum/crafting_recipe/carpentry/woodshield
	name = "wooden shield"
	result = /obj/item/weapon/shield/wood/crafted
	reqs = list(/obj/item/grown/log/tree/small = 1,
				/obj/item/natural/hide = 1)
	skillcraft = /datum/skill/craft/carpentry
	craftdiff = 2

/obj/item/weapon/shield/wood/crafted
	sellprice = 6

/datum/crafting_recipe/structure/plough
	name = "plough"
	result = /obj/structure/plough
	reqs = list(/obj/item/grown/log/tree/small = 2, /obj/item/ingot/iron = 1)
	skillcraft = /datum/skill/craft/carpentry
	time = 4 SECONDS
	craftdiff = 2

/*========= SKILL LEVEL: 3 REQUIRED ==========*/
/*
/datum/crafting_recipe/carpentry/rproesthetic
	name = "wood arm (L)"
	result = list(/obj/item/bodypart/l_arm/rproesthetic)
	reqs = list(/obj/item/grown/log/tree/small = 1,
	/obj/item/roguegear = 1)
	craftdiff = 3

/datum/crafting_recipe/carpentry/rproesthetic
	name = "wood arm (R)"
	result = list(/obj/item/bodypart/r_arm/rproesthetic)
	reqs = list(/obj/item/grown/log/tree/small = 1,
	/obj/item/roguegear = 1)
	craftdiff = 3
*/


