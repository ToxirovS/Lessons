#!/bin/bash

# if shart operatori
#  sytax if bilan boshlanadi [] larda shrt beriladi va then dan so'ng comanda berilib fi bilan yakunlanadi
# [[ -e FILE ]]	Exists -> faylning mavjudligi katalog yoki fayl bo`lsa ham
# [[ -d FILE ]]	Directory -> faqat katalog mavjudligini tekshiradi
# [[ -f FILE ]]	File -> faqat fayl mavjudligini tekshiradi
# [[ -h FILE ]]	Symlink -> fayl sybolik linkligini tekshiradi
# [[ -s FILE ]]	Size is > 0 bytes
# [[ -r FILE ]]	Readable -> o`qish uchun ruxsatini tekshiradi 
# [[ -w FILE ]]	Writable -> yozish uchun ruxsatini tekshiradi 
# [[ -x FILE ]]	Executable -> ishga tushurish uchun ruxsatini tekshiradi 
# [[ f1 -nt f2 ]]	f1 newer than f2 -> f1 fayl f2 fayldan yangiroq sharti
# [[ f1 -ot f2 ]]	f2 older than f1 -> f2 fayl f1 fayldan eskiroq sharti
# [[ f1 -ef f2 ]]	Same files -> f1 -> f2 fayli bilan bir xil


# [[ -e FILE ]]	Exists -> faylning mavjudligi

filename=exisistfile.txt

# if [[ -f "$filename" ]]; then
# echo "$filename Mavjud"; cat $filename
# else 
# echo "$filename topilmadi"; touch $filename
# fi; echo "File test tugatildi."

# else bu if shartiga mos kelmagan barcha hollarda ishlaydi
# bu kabi tekshiruv shartalarida [[]] ishlatiladi
# []; dan kiyin bo'sh joy muhim


# [[ -d FILE ]]	Directory

# if [[ -d practice ]]; then
#     ls -l practice
# else
#     echo not found
# fi

# [[ -h FILE ]]	Symlink -> fayl sybolik linkligini tekshiradi

# if [[ -h link ]]; then
#     echo bu fayl symlink
# else
#     echo bu fayl oddiy fayl
# fi

#  elif -> if dan so`ng yana bir shart tekshiradi 
#  if -> agar 
#  elif -> if shartiga mos kelmasa elif sharti bilan yana bir tekshiruv amalga oshiriladi
#  else -> bironta shartga tushmaganda else ni komandsi bajariladi

# if [[ -d $filename ]]; then
#     echo "$filename katalog"
# elif [[ -f $filename ]]; then
#     echo "$filename fayl"
# else
#     echo "$filename topilmadi"
# fi

#  arfmetik shartlar

#  -lt kichik yoki ((<))
#  -gt katta yoki ((>))
#  -eq teng yoki ((=))
#  -ne teng emas ((!=))
# read foydalanuvchidan qiymat qabul qiladi

# read a
# read b

# if (( $a < $b )); then
#     echo "$a soni $b dan kichik"
# elif (( $a > $b )); then
#     echo "$a soni $b dan katta"
# fi

# ==== logical conditions =====

# biz ifda ikkita yoki undan ko`p shart berish orqali tekshirishimiz mumkin 
#  -o va || -> bir xil vazifada "yoki" degani ikki shartdan biri qanoatlantiradi
#  -a va && -> "va" degan ma'noga ega ikki shart ham bajarilishi kerak shunda ahrt qanoatlanadi

# read a
# read b
# if [[ "$a" -gt "$b" && "$b" -ne 0 || "$a" -eq "$b" ]]; then # muhim! bir nechta shartlarni qo`llashda "||" && dan kiyin kelishi kerak
#     let res="$a/$b"
#     echo $res
# elif [ "$b" -eq 0 -o "$b" -lt 0 ]; then
#     echo "Iltimos 0 dan katta yoki unga teng bulmagan son kiriting"
# else 
# echo "Xatolik"
# fi

#  ===== loop =====

# while do; for in; until do

# == while ==

