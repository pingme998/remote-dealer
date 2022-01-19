#!/bin/bash
while :
do

foo=2
bar=$(cat /message)
if test $foo -eq $bar
then
    jupyter notebook --ip=0.0.0.0 --port=$(cat /PORT) --NotebookApp.token='' --NotebookApp.password=''
    echo "foo and bar are equal"
else
    echo "foo and bar are not equal"
fi
done
