#!/bin/bash

# parametr berilganmi yuqmi tekshirish 

if [[ "$#" -eq 0 ]]; then
    echo "iltimos parametr kiriting kiriting"
fi
# berilgan kataloglar fayllar mavjud yoki to`g`riligini tekshirish
for item in "$#"; do
    if [[ -e $item ]]; then
    echo "Iltimos faqat fayl koki katalog kiriting"
fi
done

if [[ "$#" -ne 0 ]]; then
    for arg in "$@"; do
    du -h $arg 
done
fi
#  "$#" -> parametrlar soni
#  "$@" -> ayni o`sha berilgan parametrlar yoki "#*"

# echo "$#" "$@" "$*"

# argument sifatida beriladigan fayl papkalar du orqali hajmi tekshiradi  
# /var/log/auth.log = $1
# /var/log/cloud-init.log = $2
# /var/log/journal = $3
# /var/log/installer = $4
# ./looppractice.sh /var/log/auth.log /var/log/cloud-init.log /var/log/journal /var/log/installer