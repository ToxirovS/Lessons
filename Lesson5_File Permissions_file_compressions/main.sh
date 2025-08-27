#!/bin/bash

# Buyruq zipfayllarni ZIP arxiviga to'plash va siqish uchun ishlatiladi.

# Buyruq bilan foydalanishingiz mumkin bo'lgan ba'zi umumiy variantlar zip:

# -r- Kataloglarni rekursiv ziplash
# -u- Arxivdagi fayllar yangiroq bo'lsa, ularni yangilang
# -d- Arxivdan fayllarni o'chirish
# -e- ZIP arxivi tarkibini shifrlash
# -x- Muayyan fayllarni ziplangandan chiqarib tashlang

# misollar:
# zip archive.zip file1 file2

# butun bir katalog bilan arxivlash :
# zip -r archive.zip folder/

# arxivda joylashgan fayllarni yangisiga almashtirish aniqrog'i shu fayllarni o'zini yangilab qo'yish:
# zip -u archive.zip file1 file2

# arxivda mavjud faylni o`chirib tashlash
# zip -d archive.zip file1

# arxivga parol  o'rnatish
# zip -e archive.zip file1 file2


# Buyruq unzip ZIP arxividan siqilgan fayllarni chiqarish uchun ishlatiladi.

# Buyruq bilan foydalanishingiz mumkin bo'lgan ba'zi umumiy variantlar unzip:

# -l- Arxiv fayllarini ro'yxatlash
# -t- Siqilgan arxiv fayllarini sinab ko'ring
# -d- Fayllarni boshqa katalogga chiqarib oling
# -o- Mavjud fayllarni so'ramasdan qayta yozing
# -x- Muayyan fayllarni chiqarib olishdan istisno qiling

# unzip -l archive.zip
# unzip -t archive.zip
# unzip -d /path/to/extract/ archive.zip
# unzip -o archive.zip
# unzip archive.zip -x file1

# Buyruq tararxiv faylidan fayllarni yaratish, saqlash, o'zgartirish va chiqarish uchun ishlatiladi.


# Buyruq bilan foydalanishingiz mumkin bo'lgan ba'zi umumiy variantlar tar:

# -c- Yangi arxiv yarating
# -x- Arxivdan fayllarni chiqarib oling
# -t- Arxiv tarkibini sanab bering
# -z- Arxivni gzip orqali filtrlang
# -v- Qayta ishlangan fayllarni batafsil ro'yxatlash
# -f- Arxiv fayl nomini belgilang

# tar -cvf archeves.tar file1 file2