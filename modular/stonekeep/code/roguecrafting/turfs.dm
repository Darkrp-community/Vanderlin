/datum/crafting_recipe/turfs
	craftdiff = 0
	skillcraft = /datum/skill/craft/crafting

///WOOD

/datum/crafting_recipe/turfs/woodfloor
	name = "floor (rough wood)"
	craftdiff = 0

/datum/crafting_recipe/turfs/woodwall
	name = "wall (rough wood)"

/datum/crafting_recipe/turfs/daubwall
	name = "wall (daub)"

/datum/crafting_recipe/turfs/woodwindow
	name = "murder hole (wood)"
	result = /turf/closed/wall/mineral/wood/window

/datum/crafting_recipe/turfs/dwoodwall
	name = "wall (dark wood)"
	craftdiff = 2

/datum/crafting_recipe/turfs/dwoodwindow
	name = "murderhole (dark wood)"


/datum/crafting_recipe/turfs/woodfloorplank
	name = "floor (plank)"
	result = /turf/open/floor/wood
	reqs = list(/obj/item/grown/log/tree/small = 1)
	skillcraft = /datum/skill/craft/carpentry
	craftdiff = 2

/datum/crafting_recipe/turfs/woodfloorchevron
	name = "floor (patterned wood)"
	result = /turf/open/floor/ruinedwood/spiral
	reqs = list(/obj/item/grown/log/tree/small = 2)
	skillcraft = /datum/skill/craft/carpentry
	craftdiff = 3


/// STONE
/datum/crafting_recipe/turfs/stonefloor
	name = "floor (cobblestone)"
	result = /turf/open/floor/cobble
	reqs = list(/obj/item/natural/stone = 1)
	skillcraft = /datum/skill/craft/masonry
	craftdiff = 0
/datum/crafting_recipe/turfs/stonefloor/TurfCheck(mob/user, turf/T)
	if(isclosedturf(T))
		return
	if(!istype(T, /turf/open/floor/rogue))
		return
	return TRUE

/datum/crafting_recipe/turfs/stonefloor/cobblerock
	name = "road (cobblerock)"
	result = /turf/open/floor/cobblerock/alt
/datum/crafting_recipe/turfs/stonefloor/cobblerock/TurfCheck(mob/user, turf/T)
	if(isclosedturf(T))
		return
	if(!istype(T, /turf/open/floor/dirt))
		if(!istype(T, /turf/open/floor/grass))
			return
	return TRUE

/datum/crafting_recipe/turfs/stonefloor/block
	name = "floor (stone block)"
	reqs = list(/obj/item/natural/stoneblock = 1)

/datum/crafting_recipe/turfs/stonefloor/herring
	name = "floor (herringstone)"
	result = /turf/open/floor/herringbone
	reqs = list(/obj/item/natural/stoneblock = 1)
	craftdiff = 2


/datum/crafting_recipe/turfs/stonewall
	name = "wall (rough stone)"
	result = /turf/closed/wall/mineral/stone
	reqs = list(/obj/item/natural/stone = 2)
/datum/crafting_recipe/turfs/stonewall/TurfCheck(mob/user, turf/T)
	if(isclosedturf(T))
		return
	if(!istype(T, /turf/open/floor/rogue))
		return
	return TRUE

/datum/crafting_recipe/turfs/stonewindow
	name = "murder hole (stone)"
	reqs = list(/obj/item/natural/stoneblock = 2)
/datum/crafting_recipe/turfs/stonewindow/TurfCheck(mob/user, turf/T)
	if(isclosedturf(T))
		return
	if(!istype(T, /turf/open/floor/rogue))
		return
	return TRUE

/datum/crafting_recipe/turfs/stonewall/brick
	name = "wall (stone brick)"
	result = /turf/closed/wall/mineral/stonebrick
	reqs = list(/obj/item/natural/stoneblock = 2)
	craftdiff = 2
/datum/crafting_recipe/turfs/stonewall/brick/TurfCheck(mob/user, turf/T)
	if(isclosedturf(T))
		return
	if(!istype(T, /turf/open/floor/rogue))
		return
	return TRUE

/datum/crafting_recipe/turfs/fancyswall
	name = "wall (decorated stone)"
	reqs = list(/obj/item/natural/stoneblock = 2)
	craftdiff = 3
/datum/crafting_recipe/turfs/fancyswall/TurfCheck(mob/user, turf/T)
	if(isclosedturf(T))
		return
	if(!istype(T, /turf/open/floor/rogue))
		return
	return TRUE

/datum/crafting_recipe/turfs/craftstone
	name = "wall (craftstone)"
	reqs = list(/obj/item/natural/stoneblock = 3)
	craftdiff = 4


/// TWIG AND TENT


/datum/crafting_recipe/turfs/tentwall
	name = "tent wall"
	result = /turf/closed/wall/mineral/tent

/datum/crafting_recipe/turfs/tentdoor
	name = "tent door"
	result = /obj/structure/roguetent

/datum/crafting_recipe/turfs/twig
	name = "floor (twig)"
/datum/crafting_recipe/turfs/twig/TurfCheck(mob/user, turf/T)
	if(isclosedturf(T))
		return
	if(!istype(T, /turf/open/floor/dirt))
		if(!istype(T, /turf/open/floor/grass))
			return
	return TRUE






/* kaizoku ROGTODO
//Abyssariad Walls.
//Tier 'Plank' Abyssariad wall. Making a rough counterpart later.

/datum/crafting_recipe/turfs/woodwall/abyssal
	name = "wagoya joinwall"
	result = /turf/closed/wall/mineral/wood/abyssal
	reqs = list(/obj/item/grown/log/tree/small = 2)
	skillcraft = /datum/skill/craft/carpentry
	craftdiff = 1

/datum/crafting_recipe/turfs/woodwindow/abyssal
	name = "wagoya murderhole"
	result = /turf/closed/wall/mineral/wood/abyssal/window
	reqs = list(/obj/item/grown/log/tree/small = 2)
	skillcraft = /datum/skill/craft/carpentry
	craftdiff = 1

//Abyssariad Walls.
//Tier 'Stone' Abyssariad wall. Making a Stoneblock counterpart later.

/datum/crafting_recipe/turfs/stonewall/abyssal
	name = "ishigaki wall"
	result = /turf/closed/wall/mineral/stone
	reqs = list(/obj/item/natural/stone = 2)
	skillcraft = /datum/skill/craft/masonry
	craftdiff = 1

/datum/crafting_recipe/turfs/stonewindow/abyssal
	name = "ishigaki murderhole"
	result = /turf/closed/wall/mineral/stone/window
	reqs = list(/obj/item/natural/stoneblock = 2)
	skillcraft = /datum/skill/craft/masonry
	craftdiff = 1
*/
