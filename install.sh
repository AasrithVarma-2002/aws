#!/bin/bash

UN=$(id -u)
TS=$(date +%F-%H-%M-%S)
SN=$( echo $0 | cut -d "." -f1)
LF= /tmp/$SN-$TS.log
VAL(){
    echo "exit status:$1"
    echo "$2"
}

if [ $UN -ne 0 ]
then
    echo "fuck off"
    exit 1
else
    echo "you are super usr"
fi    

dnf install mysql -y &>> $LF
VAL $? "hi"

dnf install git -y &>> $LF
VAL $? "git"