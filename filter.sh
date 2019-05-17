#!/bin/bash 

# Simple filter emailist
# By Zad Bagus KP
# jangan recode yah!

# sh filter.sh filelist.txt

if [ -f "$1" ]; then 
grep -o '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' "$1" | sort | uniq -i > sukses

echo "__________           .___ ___________.__.__   __                "
echo "\____    /____     __| _/ \_   _____/|__|  |_/  |_  ___________ "
echo "  /     /\__  \   / __ |   |    __)  |  |  |\   __\/ __ \_  __ \."
echo " /     /_ / __ \_/ /_/ |   |     \   |  |  |_|  | \  ___/|  | \/"
echo "/_______ (____  /\____ |   \___  /   |__|____/__|  \___  >__|   "
echo "        \/    \/      \/       \/                      \/       "

echo " Total Listmu : `wc -l $1`"
echo " Filter sukses : `wc -l sukses`"

for i in gmail yahoo aol hotmail;do cat sukses | grep $i > $i.txt;echo "[+] $i : `wc -l $i.txt`";done

cat sukses | grep -v gmail | grep -v yahoo | grep -v aol | grep -v hotmail > others.txt;echo "[+] others : `wc -l others.txt`"
rm sukses
echo "[ Selesai Kontol! ]"

else 
echo "{?} File $1 Tidak Ada !!" >&2 
exit 1 
fi
