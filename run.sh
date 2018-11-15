#!/bin/bash
num=0

while [ $num -le 7 ]

do
gnome-terminal -x bash -c "echo $num;mumudvb -dvc card$num.conf;exec bash;"
let num++

done





















