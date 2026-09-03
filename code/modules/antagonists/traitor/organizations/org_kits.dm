/obj/item/storage/box/syndie_kit/faid_hacking_kit
	desc = "It's just an ordinary box."
	icon_state = "box"

/obj/item/storage/box/syndie_kit/faid_hacking_kit/populate_contents()
	new /obj/item/malware_injector(src)
	new /obj/item/paper/guides/antag/malware_injecting(src)

/obj/item/paper/guides/antag/malware_injecting
	info = "<b>The Malware Injector And You</b><hr /> \
		Congratulations, agent! You've been chosen to plant malware in something of Nanotrasen's. Here's how to do it:<br> \
		1. Get access to the device you need to hack.<br> \
		2. Use the malware injector on the device. Don't lose it!<br>\
		3. Wait for the automated systems to finish injecting malware into the systems.<br> \
		4. Get out of there!<br> \
		Warning: The malware typically results in side effects that are noticable for the crew. <br> \
		Don't stick around, unless you want to get caught!"
