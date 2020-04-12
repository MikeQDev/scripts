#!/bin/bash

xcalib -c # reset values

if [[ $1 != "" ]]; then
  xcalib -a -co $1
fi
