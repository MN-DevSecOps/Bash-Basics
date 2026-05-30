#!/bin/bash
USERID=$(id -u)   # Check root access or not
LOGS_DIR=/root/sheellogs
LOGS_FILE=$LOGS_DIR/$0-$(date +%F-%T).log 
if [ $USERID -ne 0 ]; then
echo "Please run this script with root access"
exit 1
fi
#first arg ==>whar are you trying to install
#second arg ==> exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "Installing $1 is ... FAILED"
        exit 1
    else
        echo "Installing $1 is ... SUCCESS"
    fi
}
#Install MySQL
dnf list installed mysql &>> $LOGS_FILE

if [ $? -eq 0 ]; then
   echo "MySQL is already installed ... SKIPPING"
else
   echo "Installing MySQL"
   dnf install mysql -y &>> $LOGS_FILE
    VALIDATE MySQL $?
      
fi
#install nginx
dnf list installed nginx 
if [ $? -eq 0 ]; then
   echo "nginx is already installed ... SKIPPING"
else
   echo "Installing nginx"
   dnf install nginx -y &>> $LOGS_FILE
    VALIDATE nginx $?
fi