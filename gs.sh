#!/bin/bash

#chromium-browser https://www.google.com/search?q=$1+$2+$3+$4+$5+$6+$7+$8+$9 &

repl=`echo "$@" | sed -e 's/ /+/g'`

chromium-browser https://www.google.com/search?q=$repl & disown
