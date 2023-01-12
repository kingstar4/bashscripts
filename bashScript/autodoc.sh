#! /bin/bash

echo -e "ENTER THE NAME OF THE FILES YOU WANT TO CREATE:\n "

echo -e "\033[5;34;40mEach File Must be Written with the File Extension \033[0m\033[34;40mCTRL+d to save and exit \033[0m"
echo " "

cat >baseDoc.txt
file=$(cat baseDoc.txt)

for i in $file;do

    touch "$i"
done