#!/bin/sh
if ! [ -d "$HOME/.dot" ]; then
	git clone --separate-git-dir="$HOME/.dot" https://github.com/tgorordo/dots.git .tmp --recurse-submodules
	rsync --recursive --verbose --exclude '.git' .tmp/ $HOME/ #&& rm -rf .tmp
fi
