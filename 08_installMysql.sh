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
    echo "Installation of $2 is failed"
    exit 1
else    
    echo "Installation of $2 is success"
fi
}

yum install mysql -y

VALIDATE $? Mysql



yum install postfix -y

VALIDATE $? Postfix