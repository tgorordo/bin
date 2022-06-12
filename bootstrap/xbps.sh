#!/bin/sh
if ! [ -x "$(command -v xbps-install)" ]; then
	exit 1
fi

if ! [ -x "$(command -v git)" ]; then
	sudo xbps-install -Syu git
fi

if ! [ -x "$(command -v rsync)" ]; then
	sudo xbps-install -Syu rsync rclone
fi
