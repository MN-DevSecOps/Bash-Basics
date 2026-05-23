#!/bin/bash

# echo "I am continuing..."
dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "MySQL is already installed ... SKIPPING"
else
    echo "Installing MySQL"
    dnf install mysql -y
    VALIDATE MySQL $?
fi