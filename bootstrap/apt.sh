#!/bin/sh
if ! [ -x "$(command -v git)" ]; then
	sudo apt install git -y
fi

if ! [ -x "$(command -v rsync)" ]; then
	sudo apt install rsync rclone -y
fi
