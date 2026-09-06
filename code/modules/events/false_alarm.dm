/datum/event/falsealarm
	name = "False Alarm"
	endWhen			= 1
	var/static/list/possible_event_types = GLOB.false_alarm_types
	var/datum/event/working_event

/datum/event/falsealarm/start()
	. = ..()
	var/datum/event/working_event_type = pick(possible_event_types)
	working_event = new working_event_type(skeleton = TRUE)
	log_debug("False alarm selecting [working_event] to imitate")

/datum/event/falsealarm/announce()
	if(working_event.fake_announce())
		return
	working_event.announce(TRUE)
	message_admins("False Alarm: [working_event]")
	kill()

/datum/event/falsealarm/end()
	QDEL_NULL(working_event)
