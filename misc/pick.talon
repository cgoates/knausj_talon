# select from a list with the keyboard
pick: key(return)
pick <number_small>:
	key("down:{number_small}")
	sleep(10ms)
	key(return)
pick <user.ordinals>:
	key("down:{ordinals}")
	sleep(10ms)
	key(return)
pick up <user.ordinals>:
	key("up:{ordinals}")
	sleep(10ms)
	key(return)
