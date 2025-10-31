#!/bin/bash

touch ~/example.txt
echo "example.txt created in home directory."

if id "student" &> /dev/null; then
   echo "User 'student' already exists."
else
  sudo useradd -M -s /usr/sbin/nologin student
  echo "User 'student' created (no home, no shell)."
fi

sudo chown student ~/example.txt
echo "Owner of example.txt changed to 'student'."

sudo chgrp student ~/example.txt
echo "Group of example.txt changed to 'student'."

ls -l ~/example.txt

