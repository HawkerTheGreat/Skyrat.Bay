#include "playablecolony_radio.dm"

/datum/map_template/ruin/exoplanet/playablecolony
	name = "established colony"
	id = "playablecolony"
	description = "a fully functional colony on the frontier of settled space"
	suffixes = list("playablecolony/colony.dmm")
	cost = 0
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS | TEMPLATE_FLAG_NO_RADS
	ruin_tags = RUIN_HUMAN|RUIN_HABITAT
	ban_ruins = list(/datum/map_template/ruin/exoplanet/playablecolony2)
	apc_test_exempt_areas = list(
		/area/map_template/colony/mineralprocessing = NO_SCRUBBER|NO_VENT
	)
	spawn_weight = 0

/decl/submap_archetype/playablecolony
	descriptor = "established colony"
	crew_jobs = list(/datum/job/submap/colonist)

/datum/job/submap/colonist
	title = "Colonist"
	supervisors = "the trust of your fellow Colonists"
	info = "You are a Colonist, living on the rim of explored, let alone inhabited, space in a reconstructed shelter made from the very ship that took you here."
	alt_titles = list(
		"Colony Engineer",
		"Colony Doctor",
		"Colony Security Marshall",
		"Colony Miner",
		"Colony Service Worker",
		"Colony Explorer")
	total_positions = 7
	outfit_type = /decl/hierarchy/outfit/job/colonist
	min_skill = list(	SKILL_CONSTRUCTION = SKILL_BASIC,
						SKILL_ANATOMY = SKILL_BASIC,
						SKILL_MEDICAL = SKILL_BASIC,
						SKILL_BOTANY = SKILL_BASIC,
						SKILL_EVA = SKILL_BASIC,
						SKILL_ELECTRICAL = SKILL_BASIC)
	skill_points = 40

/decl/hierarchy/outfit/job/colonist
	name = OUTFIT_JOB_NAME("Colonist")
	id_types = null
	pda_type = null
	l_ear = /obj/item/device/radio/headset/map_preset/playablecolony

/obj/effect/submap_landmark/spawnpoint/colonist_spawn
	name = "Colonist"

/obj/effect/submap_landmark/joinable_submap/colony
	name = "Established Colony"
	archetype = /decl/submap_archetype/playablecolony

// Areas //
/area/map_template/colony
	name = "\improper Colony Hallways"
	icon_state = "halls"
	icon = 'maps/random_ruins/exoplanet_ruins/playablecolony/colony.dmi'

/area/map_template/colony/engineering
	name = "\improper Colony Engineering"
	icon_state = "processing"

/area/map_template/colony/atmospherics
	name = "\improper Colony Atmospherics"
	icon_state = "shipping"

/area/map_template/colony/bathroom
	name = "\improper Colony Lavatory"
	icon_state = "shower"

/area/map_template/colony/commons
	name = "\improper Colony Common Area"
	icon_state = "A"

/area/map_template/colony/messhall
	name = "\improper Colony Mess Hall"
	icon_state = "B"

/area/map_template/colony/tcomms
	name = "\improper Colony Secure Storage"
	icon_state = "C"

/area/map_template/colony/jail
	name = "\improper Colony Jail"
	icon_state = "D"

/area/map_template/colony/armory
	name = "\improper Colony Armory"
	icon_state = "F"

/area/map_template/colony/hydroponics
	name = "\improper Colony Hydroponics Bay"
	icon_state = "X"

/area/map_template/colony/airlock
	name = "\improper Colony Primary External Airlock"
	icon_state = "airlock"

/area/map_template/colony/medbay
	name = "\improper Colony Hospital"
	icon_state = "D"

/area/map_template/colony/surgery
	name = "\improper Colony Operating Theatre"
	icon_state = "F"

/area/map_template/colony/mineralprocessing
	name = "\improper Colony Mining Bay"
	icon_state = "A"

/area/map_template/colony/command
	name = "\improper Colony Operations Center"
	icon_state = "B"

/area/map_template/colony/dorms
	name = "\improper Colony Dormitories"
	icon_state = "C"
