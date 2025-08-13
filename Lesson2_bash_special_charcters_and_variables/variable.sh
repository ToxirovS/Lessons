#!/bin/bash

echo  " ==== O'zgaruvchilar, bir o'zgaruvchiga boshqasini tenglashtirish ===="
echo 
a=12 # o`zgaruvchi a ga 12 qiymati saqlanadi 
# ^ bu yerda joy tashlanmasligi kerak xatolik yuzaga keladi
# a =12 yoki a= 12 xato ko`rinishda

take_a=$a # take_a o`zgaruvchisiga a o'zgaruvchisi saqlanadi o`zgaruvchilarni
#  chaqirishda (foydalanishda) "$" belgisidan foydalaniladi 

echo take_a # bu yerda tizm take_a ni oddiy matn ko`rinishida qabul qiladi
echo $take_a # bu yerda esa o`zgaruvchi shaklida qabul qiladi va unga birlashtirilgan
# a o'zgaruvchi qiymati chiqariladi

#  O'zgaruvchilarni bir qatorda berish ham mumkin 

var1=12 var2=13 var3=14

# Ularni ketma-ket tarzda chiqarish
echo $var1 $var2 $var3
echo
echo "$var1" '$var2' ${var3} # o'zgaruvchi "" da ifodalansa natija qaytaradi '' da esa oddiy matn sifatida qabul qilinadi



#       ========   Variables in Advanced

# ==== Qiymat berilmagan o`zgaruvchilar ====

echo " ==== Qiymat berilmagan o'zgaruvchilar ===="
echo $non_var

let "non_var += 5"

echo $non_var

# Assignment
a=879 # oldingi a o'zgaruvchi qiymati o`rniga endi yangisi yoziladi 
# ^ va shu qatordan boshlab shu qiymatni qaytaradi (a=879)

echo
echo "The value of \"a\" is $a."

let let=10+12   # let orqali o`zgaruchi ustida arfmetik amallar bajariladi 
echo $let

let let*=10 # bu quyidagi ko'rinishni qisqartmasi  let=let*10 
# +=
# -=
# *=
# /=

echo $let

# let let=let/10
# echo $let



# ====  Bash komandalarini O`zgaruvchiga saqlash ====


echo " ====  Bash komandalarini O'zgaruvchiga saqlash ===="
echo
ls=ls  # bu ko`rinishda oddiy matn ko'rinishida aqubul qilinadi
echo $ls


echo
list=`ls -l` # `komand` shu ko'rinishda bo'lishi kerak
echo $list

# yoki quyidagicha
echo
list2=$(ls -la)
echo -n $list2


# ==== o`zgaruvchilar Turini  o'zgartirish ====

echo
echo
echo "==== o'zgaruvchilar Turini  o'zgartirish ===="



son=24545
let "son += 2"
echo $son
son2=${son/45/SS}
echo $son2

echo

# ==== Maxsus o'zgaruvchilar ====

echo
echo " ==== Maxsus o'zgaruvchilar ===="
