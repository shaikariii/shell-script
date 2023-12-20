#!/bin/bash


DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOG_FILE=/tmp/$SCRIPT_NAME_$DATE.log

for i in $@
do
    yum install $i -y
done


