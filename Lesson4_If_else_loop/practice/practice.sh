#!/bin/bash

# grep va awk yordamida tizm haqida kerakli ma'lumotlarni olish

# General System Information:

: '
   Tayyor yozilgan kodni natijasini {} -> block orqali practice.txt fayliga saqlash kerak
  agar practice.txt fayli mavjud bulsa shu faylga agar mavjud bulmasa 
  yangi practice.txt fayli yaratib ushanga saqlash kerak
'

date=`timedatectl | grep 'Local time' | awk '{print $4}'`
timezone=`timedatectl | grep 'Time zone' | awk '{print $3}' `
ip=`ip a | grep 'scope global' | awk '{print $2}' | cut -d '/' -f1`
OS=`hostnamectl | grep 'Operating System:' | awk '{print $1 $2 $3}'`
Mem=`free -h | grep 'Mem:' | awk '{print $7}'`
Memroot=`df -h / | grep '/' | awk '{print $5}'`

filename=practice.txt
if [[ -e $filename ]]; then
    {
echo -e "\v Date = $date"
echo -e "\v Ip = $ip"
echo -e "\v Operating system = $OS"
echo -e "\v Free memory = $Mem"
echo -e "\v Root memory usage = $Memroot"  
} > ./practice.txt
cat ./practice.txt
else 
    echo "$filename yaratildi yana bir boara urinib ko'ring"; touch $filename
fi

