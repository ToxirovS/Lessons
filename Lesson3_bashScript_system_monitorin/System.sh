#!/bin/bash

{
# ====>>  System Monitoring  <<====
echo -e "\v\t====>>  System Monitoring  <<===="
# process status ps
# List processes top
# Disk spase df
# Directory usage du
# Memory Usage free
# Terminate kill
# Uptime 

echo -e "\v\t==== ps ===="

# -e - barcha jarayonlarni ko'rsatish
# -f - Show detailed information
# -u - tanlangan user
# -a - terminalda bo`layotgan jarayonlarni ham qo`shib ko`rsatadi`
# -x - terminaldan tashqari jarayonlarni ko`rsatadi`

  ps -a



echo -e "\v\t==== top ===="

# -d- Yangilanishlar orasidagi vaqtni belgilang
# -p- Muayyan PIDlarni kuzatib boring
# -u- Muayyan foydalanuvchi uchun vazifalarni ko'rsatish
# -n- Takrorlashlar sonini belgilang
# -b- Partiya rejimida ishlash
# touch system_info.txt

top -b -u 'root' -n 1

echo -e "\v\t==== df ===="
# -h- O'lchamlarni odam o'qiy oladigan formatda ko'rsatish (masalan, KB, MB)
# -a- Barcha fayl tizimlarini, hatto bo'shlarini ham ko'rsating
# -T- Fayl tizimining turini ko'rsatish
# -i- Inoddan foydalanishni ko'rsatish
# Inodlar: Inodlar - bu ko'plab fayl tizimlari tomonidan fayllar va kataloglar haqidagi ma'lumotlarni saqlash uchun ishlatiladigan ma'lumotlar tuzilmalari, ularning hajmi, egasi, ruxsatnomalari va vaqt belgilari.
# Har bir fayl yoki katalog noyob inodega ega. Buyruq df -iko'plab kichik fayllarga ega tizimlar uchun muhim bo'lishi mumkin bo'lgan inode foydalanishni ko'rsatadi.

# -P- POSIX chiqish formatidan foydalaning
df -hT
echo
df -hi 

echo -e "\v\t==== du ====" 
# Kataloglarning hajmini ko`rsatadi`

# -h- O'lchamlarni odam o'qiy oladigan formatda ko'rsatish (masalan, KB, MB)
# -s- Har bir element uchun faqat umumiy hajmni ko'rsatish
# -a- Faqat kataloglar emas, balki barcha fayllar uchun o'lchamlarni ko'rsatish
# -c- Umumiy miqdorni ishlab chiqaring
# --max-depth=N- Katalogga o'tish chuqurligini cheklash ya'ni katalogni ichidan maximum nechta katalog chuqurlikda tekshirishni aytadi
# --max-depth=1 bulsa / root kataalogidan faqat /var yoki /home larni ichiga kiradi /var/log/ emas 

du -hs /var
# var katalogining umumiy hajmini ko'rsatish

echo -e "\v\t==== free ====" 
# free ram va swap qotiralaridan tizim qanchalik foydalanayotganini ko`rsatib turadi

# -h- Xotirani odam o'qiy oladigan formatda ko'rsatish (masalan, KB, MB, GB)
# -b- Xotirani baytlarda ko'rsatish
# -k- Xotirani kilobaytlarda ko'rsatish (KB)
# -m- Xotirani megabaytlarda ko'rsatish (MB)
# -g- Xotirani gigabaytlarda ko'rsatish (GB)
# -s [interval]- Belgilangan vaqt oralig'ida doimiy ravishda xotiradan foydalanishni ko'rsatish
# -t- Umumiy xotirani ko'rsatish
free -ht
# free -s 2 # har ikki secunda tekshirib boradi

echo -e "\v\t==== kill ====" 

# -9: Jarayonni majburan tugatish.
# -l: Barcha signal nomlarini sanab bering.
# -s [signal]: Yuboriladigan signalni belgilang.
# -p: Jarayon identifikatorini chop eting.

# kill -9 PID 

echo -e "\v\t==== Uptime  ====" 
# uptime tizm qanchadan buyon  ishlayotganini nechta foydalnavuchi ishlayapti o`rtacha yuklanishi haqida ma'lumot beradi

uptime 

} > system_info.txt
