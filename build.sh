#!/bin/sh
web-ext build --overwrite-dest -s ./web-extensions/arch-pkgs -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/arch-wiki -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/arch-aur -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/arch-bugs-fs -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/arch-bugs-t -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/arch-forum-a -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/arch-forum-k -a ./dist
web-ext build --overwrite-dest -s ./web-extensions/arch-man -a ./dist
