#!/bin/bash
echo "$$" >/sspid
while :
do

foo=1
bar=$(cat /message)
if test $foo -eq $bar
then
    kill $(cat /jppid)
    bash /entrypoint.sh
else
    echo "foo and bar are not equal"
fi
done
