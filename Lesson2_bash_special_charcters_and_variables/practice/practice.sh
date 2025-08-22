#!/bin/bash

# grep va awk yordamida tizm haqida kerakli ma'lumotlarni olish

# General System Information:

# timzone va date ni aniqlash
# ip manzilni aniqlash ip a yordamida
# hostnamectl yordamida OS ni aniqlash
# free -h yordamida xotira foydalanishini aniqlash
# df -h yordamida root katalogida xotira qancha miqdorda foydalanilganligini aniqlash
# bularning barchasining natijasini practice.txt fayliga joylash 

# timzone va date ni aniqlash
date=`timedatectl | grep 'Local time' | awk '{print $4}'`
timezone=`timedatectl | grep 'Time zone' | awk '{print $3}' `
# ip manzilni aniqlash ip a yordamida
ip=`ip a | grep 'scope global' | awk '{print $2}' | cut -d '/' -f1`
# hostnamectl yordamida OS ni aniqlash
OS=`hostnamectl | grep 'Operating System:' | awk '{print $1 $2 $3}'`
# free -h yordamida xotira foydalanishini aniqlash
Mem=`free -h | grep 'Mem:' | awk '{print $7}'`
# df -h yordamida root katalogida xotira qancha miqdorda foydalanilganligini aniqlash
Memroot=`df -h / | grep '/' | awk '{print $5}'`
# bularning barchasining natijasini practice.txt fayliga joylash
{
echo -e "\v Date = $date"
echo -e "\v Ip = $ip"
echo -e "\v Operating system = $OS"
echo -e "\v Free memory = $Mem"
echo -e "\v Root memory usage = $Memroot"  
} > ./practice.txt
cat ./practice.txt