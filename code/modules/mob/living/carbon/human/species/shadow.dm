/datum/species/shadow
	name = "Shadow"

	icobase = 'icons/mob/human_races/r_shadow.dmi'
	deform = 'icons/mob/human_races/r_shadow.dmi'

	default_language = "Galactic Common"
	unarmed_type = /datum/unarmed_attack/claws
	light_dam = 2
	darksight = 8

	blood_color = "#CCCCCC"
	flesh_color = "#AAAAAA"

	has_organ = list(
		"brain" = /obj/item/organ/brain/slime
		)

	flags = NO_BLOOD | NO_BREATHE | NO_SCAN
	bodyflags = FEET_NOSLIP

/datum/species/shadow/handle_death(var/mob/living/carbon/human/H)
	spawn(1)
		new /obj/effect/decal/cleanable/ash(H.loc)
		del(H)