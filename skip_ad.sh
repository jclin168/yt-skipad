#!/bin/sh -f

DEVICE=<DEVICE_ID_in_go-chromecast>
while :
do
go-chromecast -u ${DEVICE} status | grep BUFFERING | grep -v 'remaining=0s/0s, ' | grep -oP 'remaining=[^0]*s/' && go-chromecast -u ${DEVICE} skipad
sleep 2
done
