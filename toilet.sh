#!/bin/bash
for f in /usr/share/figlet/* 
do 
  fs=$(basename $f)
  fname=${fs%%.tlf}
  toilet -f $fname $fname 2>/dev/null
done | less
