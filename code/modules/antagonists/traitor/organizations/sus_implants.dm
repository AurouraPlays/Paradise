/obj/item/organ/internal/cyberimp/chest/nutriment/sus //Nutriment pump that gives the hunger hallucination
	name = "suspicious implant"
	desc = "This implant looks highly experimental. It probably has some nasty side effects."
	icon_state = "sus_culinary"
	implant_overlay = null
	slot = "stomach"
	origin_tech = "materials=2;powerstorage=2;biotech=2"
	materials = list(MAT_METAL = 500, MAT_GLASS = 500, MAT_GOLD = 500)
	augment_state = "nutripump"

/obj/item/organ/internal/cyberimp/chest/nutriment/sus/on_life()
	if(!owner)
		return
	if(synthesizing)
		return
	if(disabled_by_emp)
		return
	if(owner.stat == DEAD)
		return
	if(status & ORGAN_DEAD)
		return FALSE
	owner.invoke_hallucination(/obj/effect/hallucination/fake_nutrition)
	if(owner.nutrition <= hunger_threshold)
		synthesizing = TRUE
		to_chat(owner, SPAN_NOTICE("You feel less hungry..."))
		owner.adjust_nutrition(50)
		addtimer(CALLBACK(src, PROC_REF(synth_cool)), 50)

/obj/item/organ/internal/cyberimp/arm/gun/laser/sus // Arm laser that doesn't self-charge
	name = "suspicious implant"
	desc = "This implant looks highly experimental. It probably has some nasty side effects."
	icon_state = "sus_laser"
	origin_tech = "materials=4;combat=4;biotech=4;powerstorage=4;syndicate=3"
	contents = newlist(/obj/item/gun/energy/laser/mounted/sus)

/obj/item/organ/internal/cyberimp/arm/gun/laser/sus/l
	parent_organ = "l_arm"

/obj/item/gun/energy/laser/mounted/sus
	name = "suspicious mounted laser"
	selfcharge = FALSE
