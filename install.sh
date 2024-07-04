#!/bin/bash

UN=$(id -u)

if [ $UN -ne 0 ]
then
    echo "Please run the script with admin access"
fi    

dnf install mysql -y