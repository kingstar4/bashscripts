#! \bin\bash
#A CODE TO UPLOAD FILES TO GITHUB
git init

echo "Current status"
git status
echo -e "1. Add a file or files to the staging area\n2. Add every file in this directory to staging area\n3. Clone a Project from your remote repo "
echo -n "Enter Option: "
read option

if (($option==1))
then
    echo -e "Enter the name of the File/Files here:\n"
    echo -e "PRESS CTRL+D to save and exit"
    
    cat >file.txt
    detail=$(cat file.txt)
    for i in $detail;do
        git add "$i"
        git status
    done

    echo "Enter a commit message: "
    read msg
    git commit -m "$msg"

    echo "Enter your remote link here: "
    read link
    git remote add $link

    git push "$link" master

    git remote -v

elif (($option==2))
then
    git add .
    echo "Enter a commit message: "
    read msg
    git commit -m "$msg"



    echo "Enter your remote URL here: "
    read link
    git remote add $link

    git push "$link" master

    git remote -v
elif (($option == 3))
then
      echo "Enter your remote URL here: "
      read link

      git clone $link  
else
    echo "invalid input"
fi