#!/bin/bash

# echo "I am continuing..."
dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "MySQL is already installed ... SKIPPING"
else
    echo "Installing MySQL"
    dnf install mysql -y    
    VALIDATE MySQL $? "Failed to install MySQL"
fi

dnf list installed nginx
if [ $? -eq 0 ]; then
    echo "nginx is already installed ... SKIPPING"
else
    echo "Installing nginx"
    dnf install nginx -y
    VALIDATE nginx $? "Failed to install nginx"
fi
# echo "I am continuing..."
dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "MySQL is already installed ... SKIPPING"
else
    echo "Installing MySQL"
    dnf install mysql -y
    VALIDATE MySQL $?
fi

dnf list installed nginx
if [ $? -eq 0 ]; then
    echo "nginx is already installed ... SKIPPING"
else
    echo "Installing nginx"
    dnf install nginx -y
    VALIDATE nginx $?
fi