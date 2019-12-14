#!/bin/bash

repl=`echo "$@" | sed -e 's/ /+/g'`

chromium-browser https://www.google.com/search?q=$repl\&tbm=isch & disown
