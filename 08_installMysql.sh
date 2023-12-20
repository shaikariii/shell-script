#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]
then
    echo "Error : The user doent have root access"
    exit 1
fi

VALIDATE() {

    if [ $1 -ne 0 ]
then
    echo "Installation failed"
    exit 1
else    
    echo "Installation success"
fi
}

yum install mysql -y

VALIDATE $? 



yum install postfix -y

VALIDATE $?