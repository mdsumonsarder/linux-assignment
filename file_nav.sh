#!/bin/bash

ls ~ > ~/home_list.txt

cd /var/log
ls > ~/var_log.txt

echo "Bash executable path: $(which bash)"
echo "Current shell: $SHELL"
