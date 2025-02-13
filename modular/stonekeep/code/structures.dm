/* * * * * * * * * * * **
 *						*
 *		 Structures		*
 *						*
 *						*
 * * * * * * * * * * * **/

// =================================================================================
/*--------\
| Closets |
\--------*/

/obj/structure/closet/crate/roguecloset
	icon = 'modular/stonekeep/icons/structure.dmi'

/obj/structure/rack/rogue/shelf
	icon = 'modular/stonekeep/icons/structure.dmi'

/obj/machinery/light/rogue/firebowl/standing/lamp
	name = "standing lamp"
	icon = 'modular/stonekeep/icons/structure.dmi'


// =================================================================================
/*-------\
| Tables |
\-------*/

/obj/structure/table/wood/plain
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/wood/plain_alt
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/wood/reinforced_alt
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/vtable // modify with varedit for map1 big one
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/wood/nice/decorated
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/wood/nice/decorated_alt
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/wood/large_new // modify with varedit for yellow, blue, red
	icon = 'modular/stonekeep/icons/tables.dmi'
/obj/structure/table/wood/large/corner_new
	icon = 'modular/stonekeep/icons/tables.dmi'


/obj/structure/table/church // modify with varedit for church_end
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "church_mid"

/obj/structure/table/stone
	name = "stone table"
	desc = ""
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "stonetable_mid"
	max_integrity = 300
	smooth = 0
	climb_offset = 10
/obj/structure/table/stone/OnCrafted(dirin, user)
	if(dirin == NORTH)
		dir = NORTH
	if(dirin == SOUTH)
		dir = SOUTH
	if(dirin == WEST)
		dir = WEST
	if(dirin == EAST)
		dir = EAST
	. = ..()

/obj/structure/table/stone_end
	name = "stone table"
	desc = ""
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "stonetable_end"
	max_integrity = 300
	smooth = 0
	climb_offset = 10
/obj/structure/table/stone_end/OnCrafted(dirin, user)
	if(dirin == NORTH)
		dir = NORTH
	if(dirin == SOUTH)
		dir = SOUTH
	if(dirin == WEST)
		dir = WEST
	if(dirin == EAST)
		dir = EAST
	. = ..()

/obj/item/sleepingbag
	icon = 'modular/stonekeep/icons/structure.dmi'
/obj/structure/bed/rogue/sleepingbag
	icon = 'modular/stonekeep/icons/structure.dmi'




