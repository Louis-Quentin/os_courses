#!/bin/sh

echo "### Creating Files and Folders ###"

touch newfile.txt
echo "Created an empty file newfile.txt"

mkdir newfolder
echo "Created a new folder newfolder"

echo "### Navigating Filesystem ###"

cd newfolder
echo "Navigated into newfolder"

pwd
echo "Displayed the current working directory"

cd ..
echo "Navigated back to the parent directory"

echo "### File Operations ###"

ls -l
echo "Listed files with additional information"

cp newfile.txt newfolder/
echo "Copied newfile.txt to newfolder/"

mv newfolder/newfile.txt newfolder/renamedfile.txt
echo "Renamed newfile.txt to renamedfile.txt"

rm newfolder/renamedfile.txt
echo "Deleted renamedfile.txt"

echo "### Folder Operations ###"

ls newfolder
echo "Listed the contents of newfolder"

rmdir newfolder
echo "Removed the empty folder newfolder"

echo "### File and Folder Permissions ###"

touch myfile.txt
echo "Created a file myfile.txt"

chmod 755 myfile.txt
echo "Changed permissions of myfile.txt to 755"

echo "### System Monitoring ###"

df -h
echo "Displayed disk usage"

echo "### Networking ###"

ping -c 2 google.com
echo "Checked network connectivity with google.com"

echo "### Text Processing ###"

echo "This is a search_term in a file." > file.txt
echo "Created a sample text file for grep and wc"

grep "search_term" file.txt
echo "Searched for 'search_term' within file.txt"

wc file.txt
echo "Counted lines, words, and characters in file.txt"

echo "### Package Management ###"

rm myfile.txt file.txt
echo "Cleaned up created files"

echo "### Script Execution Complete ###"
