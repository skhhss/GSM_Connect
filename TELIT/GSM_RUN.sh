#!/bin/bash
INTERFACE="/dev/$(head -1 /etc/ppp/options-mobile)"

while [ true ]
do
    sh GSM_CONNECT.sh
    while [ -c ${INTERFACE} ]
    do
        sleep 1
    done
    sh GSM_DISCONNECT.sh
done

exit 0
