#!/bin/bash

repl=`echo "$@" | sed -e 's/ /+/g'`

#chromium-browser  https://www.youtube.com/results?search_query=$1+$2+$3+$4+$5+$6+$7+$8+$9 & disown
chromium-browser  https://www.youtube.com/results?search_query=$repl & disown
