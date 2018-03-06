#!/bin/sh
# resizes the tmp partion


[ -z $1 ] && echo 'Unproper Usage! Please use ./resizetmpfs.sh <new size of /tmp, in gb>' || sudo mount -o remount,size="$1"G,noatime /tmp