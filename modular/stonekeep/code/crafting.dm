/* * * * * * * * * * * **
 *						*
 *		 Crafting		*
 *						*
 *						*
 * * * * * * * * * * * **/

// =================================================================================
/*-----------------\
| Crafting Recipes |
\-----------------*/
/datum/crafting_recipe/roguetown/structure/stonetable
	name = "stone table (long mid)"
	result = /obj/structure/table/stone
	reqs = list(/obj/item/natural/stone = 2)
	verbage = "build"
	verbage_tp = "builds"
	craftsound = 'sound/foley/Building-01.ogg'
	time = 4 SECONDS
	skillcraft = /datum/skill/craft/masonry
	craftdiff = 3
/datum/crafting_recipe/roguetown/structure/stonetable/end
	name = "stone table (long end)"
	result = /obj/structure/table/stone_end

/datum/crafting_recipe/roguetown/structure/stonetable/small
	name = "stone table (single)"
	result = /obj/structure/table/stone_small

/*	.................   Unique Feldsher recipes   ................... */
/datum/crafting_recipe/nitmaiden_license
	name = "Nitemaiden health license"
	time = 4 SECONDS
	reqs = list(/obj/item/paper = 1,
		/obj/item/natural/feather = 1)
	result = /obj/item/paper/feldsher_certificate
	category = CAT_NONE

/*--------------\
| Anvil Recipes |
\--------------*/
/datum/anvil_recipe/weapons/iron/lucerne
	name = "Poleaxe (+Bar, +Small Log)"
	recipe_name = "a Poleaxe"

/datum/anvil_recipe/weapons/iron/spear_iron
	name = "Spear (+Small Log)"
	recipe_name = "a Spear"
	createmultiple = FALSE

/datum/anvil_recipe/weapons/steel/peasant_flail
	name = "Crusher (+Chain, +Small Log)"
	recipe_name = "a two-handed flail"

/datum/anvil_recipe/weapons/copper/cbludgeon
	name = "Studded club (+Club)"
	recipe_name = "a Studded Club"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/copper
	additional_items = list(/obj/item/rogueweapon/mace/woodclub)
	created_item = /obj/item/rogueweapon/mace/copperbludgeon
	craftdiff = 0


// Disabled?
/datum/anvil_recipe/tools/hoe/copper
	name = "Copper Hoe (+Stick x2)"
	recipe_name = "a gardening Hoe"
	req_bar = /obj/item/natural/stoneblock
	additional_items = list(/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/hoe/copper
	i_type = "Tools"

/datum/anvil_recipe/tools/sickle/copper
	name = "Copper Sickle (+Stick)"
	recipe_name = "a Sickle"
	req_bar = /obj/item/natural/stoneblock
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/sickle/copper
	i_type = "Tools"

/datum/anvil_recipe/tools/pitchfork/copper
	name = "Copper Pitchfork (+Stick x2)"
	recipe_name = "a Pitchfork"
	req_bar = /obj/item/natural/stoneblock
	additional_items = list(/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/pitchfork/copper
	i_type = "Tools"

/datum/anvil_recipe/tools/pick/copper
	name = "Copper Pick (+Stick)"
	recipe_name = "a digging Pick"
	req_bar = /obj/item/natural/stoneblock
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/pick/copper
	i_type = "Tools"

/datum/anvil_recipe/tools/hammer/copper
	name = "Copper Hammer (+Stick)"
	req_bar = /obj/item/natural/stoneblock
	recipe_name = "a blacksmithing Hammer"
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/hammer/copper
	i_type = "Tools"


/datum/crafting_recipe/roguetown/woodflail
	name = "wooden flail x2"
	skillcraft = /datum/skill/craft/carpentry
	reqs = list(/obj/item/rogueweapon/flail/towner = 1,
			/obj/item/ingot/iron = 10)
	tools = list(/obj/item/rogueweapon/hammer)
	req_table = TRUE
	craftdiff = 2

/datum/crafting_recipe/roguetown/militia_flail
	name = "militia flail"
	skillcraft = /datum/skill/craft/carpentry
	reqs = list(/obj/item/rogueweapon/flail/towner = 1, /obj/item/ingot/iron = 10)
	tools = list(/obj/item/rogueweapon/hammer)
	req_table = TRUE
	craftdiff = 3
