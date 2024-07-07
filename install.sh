#!/bin/bash

UN=$(id -u)

VAL(){
    echo "exit status:$1"
    echo "$2"
}

if [ $UD -ne 0 ]
then
    echo "fuck off"
    exit 1
else
    echo "you are super usr"
fi    

dnf install mysql -y
VAL $? "hi"

dnf install git -y
VAL $? "git"
