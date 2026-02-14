#!/bin/bash

<<usage
- take username as input
- take password as input
- Check if user exist
- create user

usage

read -p "Enter the  username: " username
read -p "Enter the password: " password

if id "$username" &>/dev/null; then
	echo "The user $username already exist."
	exit 1
else
	echo "The user $username doesn't exist and will be created"

fi

sudo useradd -m $username -p $password

echo "The user $username created successfully"
