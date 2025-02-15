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

// Temple pillars. Default is offset to north
/obj/structure/fluff/walldeco/pillar
	icon = 'modular/stonekeep/icons/temple.dmi'
	icon_state = "sandstone"
	pixel_y = 32

/obj/structure/fluff/walldeco/pillar/doric
	icon_state = "doric"
/obj/structure/fluff/walldeco/pillar/aztec
	icon_state = "aztec"
/obj/structure/fluff/walldeco/pillar/ionic
	icon_state = "ionic"
/obj/structure/fluff/walldeco/pillar/solomon
	icon_state = "solomon"
/obj/structure/fluff/walldeco/pillar/solomonalt
	icon_state = "solomon2"
/obj/structure/fluff/walldeco/pillar/egypt
	icon_state = "egypt"
/obj/structure/fluff/walldeco/pillar/nordic
	icon_state = "nordic"

// Placeholder shrines. Migth get better code at some point but use for now
/obj/machinery/light/rogue/wallfire/candle/lamp/temple
	icon = 'modular/stonekeep/icons/temple.dmi'

/obj/machinery/light/rogue/wallfire/candle/lamp/temple/noc
	icon_state = "noc1"
	base_state = "noc"
/obj/machinery/light/rogue/wallfire/candle/lamp/temple/pestra
	icon_state = "pestra1"
	base_state = "pestra"
/obj/machinery/light/rogue/wallfire/candle/lamp/temple/xylix
	icon_state = "xylix1"
	base_state = "xylix"
/obj/machinery/light/rogue/wallfire/candle/lamp/temple/eora
	icon_state = "eora1"
	base_state = "eora"
/obj/machinery/light/rogue/wallfire/candle/lamp/temple/malum
	icon_state = "malum1"
	base_state = "malum"
/obj/machinery/light/rogue/wallfire/candle/lamp/temple/ravox
	icon_state = "ravox1"
	base_state = "ravox"

// Sandstone brick wall
/turf/closed/wall/mineral/rogue/stonebrick/sandstone
	name = "sandstone wall"
	icon = 'modular/stonekeep/icons/sandstonebrick.dmi'

