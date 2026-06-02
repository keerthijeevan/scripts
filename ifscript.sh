
#!/bin/bash

echo "-----------------------------------------------------------------------------"

echo "1  To know the user name bro"
echo 
echo "2 To know how is our cpu is working "
echo
echo "3 To know what is the  date and time  now"
echo
echo "4 to know the which directory are you now "
echo
echo "5 calculator "

echo "---------------------------------------------------------------------------------"

read -p "Enter the choice which are mentioned above bro" a

if [ $a -eq 1 ]
then
echo "your user name is "
whoami
elif [ $a -eq 2 ]
then
echo "The cpu working like $(df -h)"
elif [ $a -eq 3 ]
then
echo "The present date is now  $(date)"
elif [ $a -eq 4 ]
then
echo "The present directory now is $(pwd)"
elif [ $a -eq 5 ]
then

read -p "enter the number 1" b

read -p "Enter the number 2 " c

read -p "Press 1 for add, 2 for subtraction, 3 for multiplication, 4 for division: " d

if [ $d -eq 1 ]
then
echo "$((b + c))"

elif [ $d -eq 2 ]
then
echo "$((b - c))"

elif [ $d -eq 3 ]
then
echo "$((b * c))"

elif [ $d -eq 4 ]
then
echo "$((b / c))"

else
echo "Enter a valid option"
fi

else
echo "Enter a vaild option"
fi
