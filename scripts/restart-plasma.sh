#!/usr/bin/bash

ps -ef | grep 'plasmashell' | grep -v 'color=auto' | awk -F ' ' '{print $2}' | xargs sudo kill -9

kstart5 plasmashell &

disown

