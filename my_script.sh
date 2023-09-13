#!/bin/bash

echo "Listing Files:"
ls -l

echo "Copying Files:"
touch source.txt
cp source.txt destination.txt

echo "Displaying top 5 lines of system processes:"
top -n 1 | head -n 5

echo "Showing Disk Usage:"
df -h

echo "Ping google.com:"
ping -c 2 google.com

echo "This is a search_term in a file." > file.txt

echo "Searching within file.txt for 'search_term':"
grep "search_term" file.txt

echo "Word Count for file.txt:"
wc file.txt

touch newfile.txt

mkdir newfolder

cd newfolder

pwd

cd ..

cp newfile.txt newfolder/

mv newfolder/newfile.txt newfolder/renamedfile.txt

rm newfolder/renamedfile.txt

ls newfolder

rmdir newfolder

touch myfile.txt

chmod 755 myfile.txt

rm myfile.txt

rm source.txt destination.txt file.txt


