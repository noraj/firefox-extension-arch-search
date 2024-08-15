#!/bin/sh
web-ext build -s ./web-extensions/v3/arch-pkgs -a ./dist
web-ext build -s ./web-extensions/v3/arch-wiki -a ./dist
web-ext build -s ./web-extensions/v3/arch-aur -a ./dist
web-ext build -s ./web-extensions/v3/arch-bugs -a ./dist
web-ext build -s ./web-extensions/v3/arch-forum-a -a ./dist
web-ext build -s ./web-extensions/v3/arch-forum-k -a ./dist
web-ext build -s ./web-extensions/v3/arch-man -a ./dist
web-ext build -s ./web-extensions/v3/arch-security -a ./dist
