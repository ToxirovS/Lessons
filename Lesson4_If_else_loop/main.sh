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

# # while do; for in; until do

# # == while ==

# while [ shart ]; do  
#       command...
# done 
# # while shu ko`rinishda bo`ladi

# #  == while auto increment
# i=1
# while (( $i <= 10 )) ; do 
#     echo "bu qator raqami $i"
#     ((i++))
# done

# # ==
# # == xuddi shu kabi until da ham ifodalash umkin 
# count=1
# until [ $count -gt 10 ]; do
#     echo "bu qator raqami $count"
#     ((count++))
# done
# #  ==

# #  == xuddi shu kabi for da ham ifodalash umkin 
# for (( i=0 ; i <= 10 ; i++ )); do
#     echo "bu qator raqami $i"
# done
# # ==

# # ===  for in

# for item in {1..5}; do
#     echo bu qator raqami $item
# done
# #  1 dan 5 gacha raqamlarda chiqaradi
# # bu orqali fayl nomi takrorlanmaydigan bir nechta fayllar yaratishimiz mumkin

# for item in {1..5}; do
#    touch nom$item.txt
#    echo "bu $item raqamli fayl" > nom$item.txt
# done

#  infinety loop for calc
# while true; do
#     echo "[exit] -> n"
#     read a
#     read b
#     let c=a+b
#     echo $c

    
#     if [ $a = "n" ] || [ $b = "n" ]; then
#         break;
#     fi
# done

# for files in *.txt; do
#     echo $files
# done
# # txt kengaytmali fayllarnibarhasi chiqarish

# cat $filename | while read line; do
#     echo $line
# done

# # ==== continue and break ====
# for o in {1..5}; do 
# if [[ $o == 3 ]]; then
#     continue;
# fi
#     echo $o
# done
# # loop 1 dan boshlab 5 gacha raqamlarni chiqarishni boshlaydi shartga ko`ra 3 raqamiga kelganda uni tashlab yana loop davom etadi


# # toq va juft sonlarni aniqlash 
# for item in $(seq 1 10); do
#     let juft="item%2"
#     if [[ $juft == 0 ]]; then
#         continue;
#     fi
#     echo $item
# done
# c=1
# cat $filename | while read line; do
#     echo $c. $line
#     ((c++))
# done