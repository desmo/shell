#!/bin/sh
#zap pattern: kill all processes matching pattern

PATH=/bin:/usr/bin

case $# in
0) echo 'Usage:zap pattern' 1>&2;exit 1
esac

kill `ps ag|grep "$*"|awk '{print $1}'`
