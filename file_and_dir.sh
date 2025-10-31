#!/bin/bash

mkdir -p ~/linux_fundamentals

mkdir -p ~/linux_fundamentals/scripts

touch ~/linux_fundamentals/example.txt

cp ~/linux_fundamentals/example.txt ~/linux_fundamentals/scripts/

mkdir -p ~/linux_fundamentals/backup
mv ~/linux_fundamentals/example.txt ~/linux_fundamentals/backup/

chmod 644 ~/linux_fundamentals/backup/example.txt

ls -l ~/linux_fundamentals/backup/example.txt
