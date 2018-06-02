#!/bin/bash

START_TIME=$(($(date +%s%N)/1000000))

curl -u user:pass -i 127.0.0.1:10001/path -d '{"action":"get"}' -H "Content-Type: application/json"

echo " ---------------------------------- "
echo $(($(date +%s%N)/1000000-${START_TIME})) " ms"
