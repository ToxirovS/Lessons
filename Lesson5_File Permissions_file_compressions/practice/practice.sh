#!/bin/bash

# ziplash
{
zip archive.zip file1 file2
zip -r archive2.zip folder/

echo "salom" > file1 file2
zip -u archive.zip file1 file2
zip -d archive.zip file1
zip -e archivep.zip file1 file2

# arxivdan chiqarish

unzip -l archive.zip 
unzip -t archivep.zip
unzip -d ../ archivep.zip
} > archeve.txt

#  tar
tar -cvf archeves.tar file1 file2