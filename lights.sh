#!/bin/bash
addr="192.168.1.143"

print_usage(){
  echo "Usage: $0 <on,off>"
  exit 0
}

if [ $# -ne 1 ];then
  print_usage
fi

status="$1"

#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:
if [[ "$status" == "off" ]]; then
  tplight off $addr
elif [[ "$status" == "on" ]]; then
  tplight hsb 192.168.1.143 0 0 1
else
  tplight hsb 192.168.1.143 0 0 $status
fi
