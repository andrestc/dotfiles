#!/bin/sh
# This script will run offlineimap and check
# for new email if there is an internet connection.
#
# If it detects new mail, it uses mpv to play a
# notification sound: notify.opus
#
# I have this run as a cronjob every 5 minutes.

# Check for internet connection. Exit script if none. (timeout in mac is `-t`)
if [ "$(uname)" == "Darwin" ]
then
	ping -q -t 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` >/dev/null || exit
else
	ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` >/dev/null || exit
fi

offlineimap -o -u quiet

