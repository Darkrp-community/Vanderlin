/* * * * * * * * * * * **
 *						*
 *		 Turfs			*
 *						*
 *						*
 * * * * * * * * * * * **/


/*--------------\
| Better Floors |
\--------------*/

/turf/open/floor/rogue/wood
	smooth_icon = 'modular/stonekeep/icons/wood.dmi'
/turf/open/floor/rogue/wood/nosmooth
	smooth_icon = 'modular/stonekeep/icons/wood.dmi'

/turf/open/floor/rogue/woodturned
	smooth_icon = 'modular/stonekeep/icons/wood_turned.dmi'
/turf/open/floor/rogue/woodturned/nosmooth/saiga
	smooth_icon = 'modular/stonekeep/icons/wood_turned.dmi'

/turf/open/floor/rogue/tile
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/rogue/cobble
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/rogue/herringbone
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/rogue/carpet/green
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/rogue/cobblerock
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/rogue/cobble/mossy/Initialize()
	. = ..()
	dir = pick(GLOB.cardinals)

/turf/open/floor/rogue/sandstone
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "sandstone"
	footstep = FOOTSTEP_STONE
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/stoneland.wav'
	smooth = SMOOTH_MORE
	canSmoothWith = list(/turf/closed/mineral/rogue,
						/turf/open/floor/rogue/herringbone,
						/turf/closed/mineral,
						/turf/closed/wall/mineral/rogue/stonebrick,
						/turf/closed/wall/mineral/rogue/wood,
						/turf/closed/wall/mineral/rogue/wooddark,
						/turf/closed/wall/mineral/rogue/stone,
						/turf/closed/wall/mineral/rogue/stone/moss,
						/turf/open/floor/rogue/cobble,
						/turf/open/floor/rogue/dirt,
						/turf/open/floor/rogue/grass,
						/turf/open/floor/rogue/grass/red,
						/turf/open/floor/rogue/grass/yel,
						/turf/open/floor/rogue/grass/cold,
						/turf/open/floor/rogue/snow,
						/turf/open/floor/rogue/snow/patchy,
						/turf/open/floor/rogue/snow/rough,
						/turf/open/floor/rogue/sandstone,
						/turf/open/floor/rogue/sandstone/temple)

/turf/open/floor/rogue/sandstone/shaded
	color = "#e5dfdf"

/turf/open/floor/rogue/sandstone/temple
	icon_state = "temple"
/turf/open/floor/rogue/sandstone/temple/Initialize()
	dir = pick(GLOB.cardinals)
	. = ..()


// =================================================================================
/*--------\
| Washing |
\--------*/

/turf/open/water/bath
	wash_in = FALSE
