#!/bin/bash

MYSELF=$0
MYTIME=$(date -r $MYSELF)

setclock() {
	date --set="$MYTIME" &>/dev/null
}

saveclock() {
	# Homage to my friend Ian, who dislikes
	# people who code dirty.
	touch $MYSELF &>/dev/null
}

case "$1" in
	start)
		setclock
		;;
	stop)
		saveclock
		;;
	*)
		echo "Usage: $MYSELF {start|stop}"
		exit 1
		;;
esac
