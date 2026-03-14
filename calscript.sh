#!/bin/bash


read -p "Enter a number1" a

read -p "Enter a number2" b

read -p  "Enter the option for add press 1 ,substraction 2 ,multiplication 3,division 4" num

if [ $num -eq 1 ]
then 
echo "$((a + b))"
elif [ $num -eq 2 ]
then
echo "$((a - b))"
elif [ $num -eq 3 ]
then
echo "$((a * b))"
elif [ $num -eq 4 ]
then
echo "$((a / b))"
else
echo "Enter  a vaild option"
fi





