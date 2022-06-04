#!/bin/sh
if ! [ -x "$(command -v gh)" ]; then
	if [ -x "$(command -v apt)" ]; then
		curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg \
			| sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
		echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
			| sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
		sudo apt update
		sudo apt install gh
	elif [ -x "$(command -v xbps-install)" ] then
		sudo xbps-install -Syu github-cli
	else
		echo "Error: Unsupported distro!" 1>&2 && exit 1
	fi
	gh auth login
fi
