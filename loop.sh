#!/bin/bash
while :
do
jupyter notebook --ip=0.0.0.0 --port=$(cat /PORT) --NotebookApp.token='' --NotebookApp.password=''
bash /ss.sh
done
