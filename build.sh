#!/bin/sh
web-ext build --overwrite-dest -s ./web-extensions/v3/arch-pkgs -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/v3/arch-wiki -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/v3/arch-aur -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/v3/arch-bugs-fs -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/v3/arch-bugs-t -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/v3/arch-forum-a -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/v3/arch-forum-k -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/v3/arch-man -a ./dist
