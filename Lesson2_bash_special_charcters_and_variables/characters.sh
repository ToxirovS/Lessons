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


