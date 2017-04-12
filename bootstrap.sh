#!/usr/bin/env bash

rsync --exclude ".git/" \
	--exclude ".DS_Store" \
	--exclude "bootstrap.sh" \
	--exclude "README.md" \
	--exclude ".gitmodules" \
	-avh --no-perms . ~;

