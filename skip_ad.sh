#!/bin/bash -f

# replace your chromecast device UUID and IP below
DEVICE="-u <UUID> -a <IP>"
CHROMCAST="timeout 5 go-chromecast ${DEVICE} status"
RESULT=$($CHROMCAST)
while :
do
        echo $RESULT
        echo $RESULT | grep BUFFERING | grep -v Peacock | grep -v unknown | grep -oP 'remaining=[^0]*s/' && go-chromecast ${DEVICE
} skipad
        while :
        do
                if [[ $RESULT == *"Backdrop"* ]]; then
                        sleep 10
                else
                        break
                fi
                RESULT=$($CHROMCAST)
        done
        sleep 1
        RESULT=$($CHROMCAST)
done
