#!/bin/bash

touch ~/original.txt
echo "original.txt created"

ln -s ~/orginal.txt ~/softlink.txt
echo "Symbolic link softlink.txt -> original.txt created"

ls -l ~/softlink.txt

rm ~/orginal.txt
echo "original.txt deleted"

ls -l ~/softlink.txt

touch ~/datafile.txt
echo "datafile.txt created"

ln ~/datafile.txt ~/hardlink.txt
echo "Hard link hardlink.txt -> datafile.txt created"

ls -l ~hardlink.txt

ls -i ~/datafile.txt ~/hardlink.txt

rm ~/datafile.txt
echo "datafile.txt deleted"

ls -l ~/hardlink.txt

find ~ -maxdepth 1 -name "*.txt" > ~/file_list.txt
echo "All .txt files in home saved to ~/file_list.txt"


