#!/bin/sh
if ! [ -x "$(command -v apt)" ]; then
	exit 1
fi

if ! [ -x "$(command -v git)" ]; then
	sudo apt install git -y
fi

if ! [ -x "$(command -v rsync)" ]; then
	sudo apt install rsync rclone -y
fi

if ! [ -x "$(command -v curl)" ]; then
	sudo apt install curl -y
fi

if ! [ -x "$(command -v vim)" ]; then
	sudo apt install neovim -y
fi
