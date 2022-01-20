#!/bin/bash
while :
do
curl "$PINGBOT" |grep ',"text":"' |tail -1 |sed 's/,/\n/g' |grep '"text":"'|sed 's|"text":"||g' |sed 's|"}}]}||g' |grep "1\|2" >/message
sleep 30
done
