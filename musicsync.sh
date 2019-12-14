#!/bin/bash

# Remote connection info
remote_addr="192.168.1.233"
remote_ssh_port=8578

# Directories
local_dir="/mnt/sdcard/music/"
remote_dir="/music/"

grep_filter="bytes/sec\|0:0\|\.m4a"

remote_path="$remote_addr:$remote_dir"

echo "Sending local directory to remote directory... ($local_dir -> $remote_dir)"
rsync -Pvrhzce "ssh -p $remote_ssh_port" $local_dir $remote_path | grep "$grep_filter"

echo "Fetching remote directory to local directory... ($local_dir <- $remote_dir)"
rsync -Pvrhzce "ssh -p $remote_ssh_port" $remote_path $local_dir | grep "$grep_filter"
