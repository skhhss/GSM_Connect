#!/bin/bash
INTERFACE="/dev/$(head -1 /etc/ppp/options-mobile)"

while [ ! -c ${INTERFACE} ]
do
    sleep 0.5
done

pon

exit 0
		
