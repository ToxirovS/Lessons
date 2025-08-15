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
echo

# Maxsus o`zgaruvchilar local va environmental ga bo'linadi 
#  local code blockd va  functionda ishlaydi terminalda yuqoladi

funk() {
        # funksiyada
    block="local"
    echo $block "funksiya"

}

#  funksiyadan tashqarida
    echo $block "1"
    funk
 # agar funk Funksiyasi echodan oldin chaqirilsa endi block o'zagruvchisi o`qiladi
    echo $block "2"


#  == Environmental variable — bu operatsion tizimdagi jarayonlar ishlashiga ta’sir qiluvchi 
# o‘zgaruvchi. Masalan, PATH o‘zgaruvchisi terminalga qaysi papkalarda buyruqlarni qidirishni aytadi. 
# .bashrc fayliga yozish orqali doimiy qilinadi

#  misol uchun $HOSTNAME

echo $HOSTNAME # bu o'zgaruvchi hech qayerda e'lon qilinmagan va qiymat berilmagan
#  bu tizimning o'zini o'zgaruvchisi buni har qanday scriptimizda ishlata olamiz

#  Environmental variable qo'shish

echo 'export MYNAME="Суръат"' >> ~/.bashrc # doimiy qilib qo'yish
echo 'export MYNICK="norahara"' >> ~/.bashrc

source ~/.bashrc 


# System Variable	Meaning	To view variable value type
# BASH_VERSION	Holds the version of this instance of bash.	echo $BASH_VERSION
# HOSTNAME	The name of the your computer.	echo $HOSTNAME
# CDPATH	The search path for the cd command.	echo $CDPATH
# HISTFILE	The name of the file in which command history is saved.	echo $HISTFILE
# HISTFILESIZE	The maximum number of lines contained in the history file.	echo $HISTFILESIZE
# HISTSIZE	The number of commands to remember in the command history. The default value is 500.	echo $HISTSIZE
# HOME	The home directory of the current user.	echo $HOME
# IFS	The Internal Field Separator that is used for word splitting after expansion and to split lines into words with the read builtin command. The default value is <space><tab><newline>.	echo $IFS
# LANG	Used to determine the locale category for any category not specifically selected with a variable starting with LC_.	echo $LANG
# PATH	The search path for commands. It is a colon-separated list of directories in which the shell looks for commands.	echo $PATH
# PS1	Your prompt settings.	echo $PS1
# TMOUT	The default timeout for the read builtin command. Also in an interactive shell, the value is interpreted as the number of seconds to wait for input after issuing the command. If not input provided it will logou user.	echo $TMOUT
# TERM	Your login terminal type.	echo $TERM
# export TERM=vt100
# SHELL	Set path to login shell.	echo $SHELL
# DISPLAY	Set X display name	echo $DISPLAY
# export DISPLAY=:0.1
# EDITOR	Set name of default text editor.	export EDITOR=/usr/bin/vim


# == Positional Parameters

# scriptni  ishga tushirishda biz unga argument ham berib ishga tushuirishimiz mumkin 
#  misol uchun ./variable.sh arg1 arg2

echo $1 # birinchi argni chiqaradi
#  arglar $1 $2 ... $9 ${10} ko`rinishida davom etadi $0 arg script nomi hisoblanadi
echo $0

echo $# # barcha arglar sonini chiqaradi

#  == shift bu argumentlarni ko`chiradi $3 -> $2 -> $1 tarzida
#  misol tariqasida quyidagicha amaliy ish 
#  katologlarning hajmini aniqlab berish
until [ -z "$1" ]; do
    du -h $1
    shift # birinchi argumentga kiying arglar qiymatini birma bir tushuraveradi
done
# /usr/bin -> birinchi argga
# /etc -> 2
# /opt -> 3
