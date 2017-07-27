#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"


rsync --exclude ".git/" \
	--exclude ".DS_Store" \
	--exclude "bootstrap.sh" \
	--exclude "README.md" \
	--exclude ".gitmodules" \
	-avh --no-perms "$DIR/" ~;


