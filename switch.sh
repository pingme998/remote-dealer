#!/bin/bash
curl "$PINGBOT" |grep ',"text":"' |tail -1 |sed 's/,/\n/g' |grep '"text":"'|sed 's|"text":"||g' |sed 's|"}}]}||g' |grep "1\|2" >/message
a=1
b=$(cat /message)
if [ "$a" -eq "$b" ]; then
  pkill python3; pkill jupyter-notebook; pkill jupyter-noteboo; kill "$(cat /pid)"
fi
