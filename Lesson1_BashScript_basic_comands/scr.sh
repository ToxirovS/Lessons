#!/bin/bash


touch new.txt
mv  new.txt  ..
rm *.txt
cp ../new.txt .
file=new.txt
echo "$file bu fayl txt fayl" > $file
cat new.txt
