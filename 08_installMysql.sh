#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]
then
    echo "Error : The user doent have root access"
    exit 1
fi


yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql is failed"
    exit 1
else    
    echo "Installation of mysql is success"
fi

yum install postfix -y

if [ #? -ne 0 ]
then
    echo "Installation of Postfix is failed"
    exit 1
else
    echo "Installation of postfix is success"
fi