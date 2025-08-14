#!/bin/bash

#   ==== Komentariya ====

# '#' belgisi orqali biz kometariya yoza olamiz va bu kod sifatida o`qilmaydi.
echo -e "\v ==== Komentariya ===="
echo
echo "The # here does not begin a comment."
echo 'The # here does not begin a comment.'
echo The \# here does not begin a comment.
echo The # here begins a comment.

# komentariya odatda yangi qator yoki kod so`ngida yoiladi  yuqoridagi shakllarda komentariya hisoblanmaydi

echo ${PATH#*:}       # Parameter substitution, not a comment.
echo $(( 2#101011 ))  # Base conversion, not a comment.

# shu kabi ko`plab holatlar bo`lishi mumkin lekin ula koment bo`lmaydi faqat yangi qator yoki qator so'ngida 
# koment hisoblanadi

#  ==== Buyruqlarni bir qatordan yozish ====


echo -e "\v ==== Buyruqlarni bir qatordan yozish ===="
echo; echo

# Komandalarni bir qatorda ifodalash uchun komanda tugaganligini ifodalovchi ";" 
# va undan sung space bilin kiyingi komanda yoziladi

ls -l; echo "bu ikkinchi buyruq"; #cat variable.sh 
# bir qatorda shu tarzda yoziladi ; belgisi orqali xuddi yangi qatordan yozilgandek natija qaytaradi

#  ==== ;; in case shart operatorda qo'llanilishi ====

echo -e "\v\t === Characters ==="
echo
case "$0" in
    ./characters.sh)
        echo "Faylingiz nomi $0"
        ;;
    *)
        echo "Faylingiz nomi topilmadi"
        ;;
esac


#  ==== . belgisi va uning vazifalari ====

# "." dan source sifatida foydalanib boshqa fayllar bilan bog`lashimiz mumkin
. ../suorse.sh

# biz yana "." dan yasgirin fayllar yaratishda ham ishlatamiz misol uchun .gitlab_ci.yaml fayl

# Yana bir vazifasi kataloglarni ko`rsatadi ya'ni . joriy katolog .. bitta oldingi katalog ../../ 2ta oldingi katalog
ls -l .  
ls -l .. 
ls -l ../.. 
echo $null


# vergul vazifasi amallarni ajratishga yordam beradi

let "t2 = ((nine = 9, 15 / 3))"
# Set "a = 9" and "t2 = 15 / 3"
echo $nine $t2
#  "," fayllar bilan ham amallar bajariladi

ls -la /{,usr/}bin/*calc
#  bu yerda  usr/bin va bin papkasida mavjud bo'lgan calc bilan tugaydigan fayllar ro`yxatini chiqaradi


#  string bo'yicha ^ va ,

String="buSuzTest"
echo ${String} # buSuzTest ni o'zi chiqadi
echo ${String^} # birinchi harf bosh harda bo'ladi
echo ${String,} # birinichi harfni kichik harfda qiladi
echo ${String^^} # barcha harflar bosh harfda
echo ${String,,} # barcha harflar kichik harfda

#  \ -> backslash escape istisnolar kiritishda qo`llaniladi asosan echo va sed da foydalaniladi
#  -e optioni orqali bajariladi

# \n -> yangi qator
echo -e "\n salom" # bir qato tashlab chiqaradi
echo -e "\t salom" # \t -> tab 
echo -e "\v salom" # vertikal tab
echo -e "salom\b" # backspace
echo -e "\a salom" # alert

# / bu esa fayl yo'lini ko'rsatish uchun foydalaniladi

ls -1 ../ # /katalog/fayl_ichidagi_boshqa_katalog

#  `` ushbu backquotes ichida yozilgan matn kod sifatida olinadi
cod1="du -h ." 
echo -e "\n $cod1"
cod2=`du -h .`
echo -e "\n $cod2"

#  : > va  > belgilari
# echo > file_noi ko'rinishida faylga ma'lumot yoziladi
# : > faylni bo`shatadi

# touch text.txt # bir martta yaratib olish uchun 
echo "salom bu hozir bu faylda ma'lumot bor" > text.txt # faylga matn yoziladi
cat text.txt # fayl uqiladi
: > text.txt # fayl bushatiladi
cat text.txt

# * bu barcha fayllarni yoki barcha *.txt kabi kengaytmalarni ifodalashda qo`llaniladi

echo * # faylning tarkibini ko'rsatadi
echo * .sh # barcha .sh bilan tugaydigan fayllarni ko`rsatadi
echo [cTv]* # barcha cTtv harfi bilan foydalaniladigan fayllarni ko'rsatadi

echo $* # barcha argumentlar
echo $@ # $* bilan bir xil
echo $# # barcha argumentlar soni
# misol sifatida ./characters.sh first_arg 12 third_arg

# $? exit status scriptdan chiqish holati oxirgi bajarilgan komanda haqida
# agar xatolik bo`lsa scriptning oxirgi komandasida qandaydir son qaytaradi, misol uchun: No such file or directory 1 yoki command not found 127
#  muvofiqqiyatli bulsa o ciqadi

echo $?

