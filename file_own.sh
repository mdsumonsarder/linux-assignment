#!/bin/bash

mkdir -p ~/project
echo "Directory 'project' created in home directory."

touch ~/project/report.txt
echo "File 'report.txt' created inside project directory."

chmod 644 ~/project/report.txt
echo "Permissions for report.txt set to rw- for owner, r-- for group and others."

chmod 755 ~/project
echo "Permissions for project directory set to rwx for owner, r-x for group and others."

echo "Permissions of report.txt:"
ls -l ~/project/report.txt

echo "Permissions of project directory:"
ls -ld ~/project

