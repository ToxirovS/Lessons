#!/bin/bash

# grep
# awk
# sed
# cut
# sort
# tail
# head

# ==== grep ====
echo -e "\v\t ==== grep ===="
# grep burug'i fayllardan kataloglardan kerakli qisimni qirqib oladi 
# unda quyidagi asosiy optionlar bor 
# -i  kichik va katta harflarni inobatga olmaydi
# -r  ko`rsatilgan barcha kataloglar bo'yicha oladi
# '^[A-Za-z]' barcha ma'lumottlarni chiqaradi Aa-dan Zz gacha bo`lgan

grep '[Ff]unksiya' ./variable.sh 
grep -i 'Funksiya' ./variable.sh
# ikkalsi bir xil natija berad

# ==== awk ====

echo -e "\v\t ==== awk ===="

# awk fayllardan ma'lumot olish va hisobot berish uchun foydalidir
#  uning optionlari quyidagicha 
# -F biron bir belgi bilan ajratib olamiz
# -v o'zagaruvchi qo`shib ishlatishga yordam beradi

awk -F "/" '{print $2}' ./example.txt
#  $1 birinchi ustun $2 ikkinchi
# -F optionidan foydalanganimizda tanlgan belgimizdan chap tomoni $1 qolgani qismi $
awk  '{print $2}' ./example.txt
#  Hech qanday optiondan foydalanilmaganda har bir spacedan kiyin bir ustun bo'ladi
# agar faqat bir qatordan bir ustun kerak bulsa shu qatorni qirqib olish mumkin
grep 'misol' ./example.txt | awk '{print $5}'
# bir nechta ustunlarni chiqarish uchun {print $1 $2 $3}
 

# ==== sed ====
echo -e "\v\t ==== sed ===="

# matn tahrirlash uchun foydalaniladi
sed -i 's/almashtir/almashdi/' ./example.txt
# -i optioni fayllarni tahrir qilishda ishlatiladi
# s -> almashtirishni ifodalaydi
# bir nechta bir xill so`zlarni faqat bittasini almashtirish mumkin lekin g orqali hammasini almashtirsa bulasi

sed -i 's/bir/ikki/g' ./example.txt

# Fayldan faqat kerakli matnni olish uchun -n optioni va p dan foydalanamiz

sed -n '1,2p' ./example.txt # 1 dan 2 qatorgacha bo'lgan barcha matn chiqariladi
# satrni o'chirish
sed -n '/eror/d' ./example.txt # eror so`zini o`chirib tashlaydi

# bir nechta buyruqlarni ketma ket ishlatish

sed -e 's/olma/pamidor/g' -e 's/meva/sabzavot/g' ./example.txt


# ==== cut ====

echo -e "\v\t ==== cut ===="

# Bash cut buyrug'i - bo'limlarni satrlardan olib tashlaydi
# optionlari: 
# -d tanlangan belgilarni olib tashalydi
# -f ko`rsatilgan maydon bo'yicha oladi
# --complement faylning barcha qismini taqdim etadi

cut -d ',' -f1 ./example2.txt
cut -d ',' -f2 ./example2.txt
cut -d ' ' -f 2,3 ./example2.txt
cut -d ' ' -f 1,2 ./example2.txt
cut -c 3-6 ./example2.txt


# ==== sort ==== 
echo -e "\v\t ==== sort ===="

#  ma'lumotlarni tartib bilan chiqarib beradi
sort -n ./example2.txt
# options
# -r - teskari saralaydi
# -n - raqam buyicha saralaydi
# -k - ko`rsatilgan ustun buyicha saralaydi
# -u - ikkita bir xil qatorni bittasini taqdim etadi
# -t - ko`rsatilgan belgi buyicha 

# ==== tail ==== 
echo -e "\v\t ==== tail ===="

#  tail fayllarning oxirgi qismini ko'rsatish uchun foydalaniladi
# tail [OPTION]... [FILE]... 
# optionlar 
# -n [number]: faylning nuberni o`rniga kiritilgan ozirgi shuncha qatoini ko`rsatadi
# -f: fayl bilan o`zgarib boradi real timeda
# -c [number]: faylning oxirgi number ta charcterini ko`rsatadi
# --pid=[pid]: pid ya'ni proccess id - jarayon idsi qaysidir jarayon tugagach real timda ko`ratib turish ham tugaydi 
# --retry: Ushbu --retryparametr tailfaylga kirish imkoni bo'lmagan taqdirda ham uni ochishga harakat qilishni davom ettiradi. Bu vaqtinchalik mavjud bo'lmagan fayllar uchun foydalidir.

tail -n 2 ./example2.txt

#  ==== head ====
echo -e "\v\t ==== head ===="
# head tailga o`xshash faqat bosh qismidan ko`rsatadi
# optionlari 
# -n [number]: Faylning birinchi [raqam] qatorlarini ko'rsatish.
# -c [number]: Faylning birinchi [raqam] baytlarini ko'rsatish.
# -q bir nechta fayllarni ko`rsishda sarlavhalarni yuq qiladi

head -c 12 ./example.txt ; echo
head -n 1 ./example.txt ./example2.txt
head -n 1 -q ./example.txt ./example2.txt