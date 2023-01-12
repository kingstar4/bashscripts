#!/bin/bash


echo -e "1. Create stack\n2. Delete stack\n3. Update stack\n"

echo -n "Select an option: "
read option

detail(){
    echo "Enter StackName:"
    read stkName

    echo "Enter Template-Body File:"
    read tempBody
}



if (($option == 1)) 
    then

        detail
        echo "Do want to add a parameter file (y/n):"
        read ans
    case $ans in
        "y")
            echo "Enter Parameter File: "
            read param
            aws cloudformation create-stack --stack-name $stkName --template-body file://$tempBody --parameters file://$param 
            ;;

        "n")
            aws cloudformation create-stack --stack-name $stkName --template-body file://$tempBody
            ;;
        *)
            echo "Invalid Input"
            ;;
    esac

elif (($option == 2)) 
    then

        echo "Enter StackName:"
        read stackName
        aws cloudformation delete-stack --stack-name $stackName

elif (($option == 3)) 
    then
        detail
        aws cloudformation update-stack --stack-name $stkName --template-body file://$tempBody
else
    echo -e "Invalid Input\a"
fi