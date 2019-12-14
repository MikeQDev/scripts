#!/bin/bash

SAVE_DIR=/mnt/sdcard/music/newmusic/
SAVE_FMT="%(title)s.%(ext)s"
if [ $# -lt 1 ]; then #|| [ "$1" != "*youtube*" ]; then
  echo "Invalid usage; use: $0 <url...>"
  exit 1
fi
youtube-dl -o $SAVE_DIR/$SAVE_FMT -f 140 --no-mtime $@
