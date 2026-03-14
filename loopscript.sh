#  #!/bin/bash

  #for((i=1;i<=$#;i++))
#do
# echo "${!i}"
#done

#!/bin/bash

echo "----------- Argument Program -----------"

# Script name
echo "Script Name: $0"

# Number of arguments
echo "Total Arguments: $#"

# Check if arguments exist
if [ $# -eq 0 ]
then
    echo "No arguments provided"
    echo "Usage: ./script.sh num1 num2 num3 ..."
    exit
fi

echo "----------- Printing Arguments -----------"

for((i=1;i<=$#;i++))
do
    eval arg=\${$i}
    echo "Argument $i : $arg"
done

echo "----------- Arithmetic Operations -----------"

if [ $# -lt 2 ]
then
    echo "Need at least 2 numbers"
    exit
fi

a=$1
b=$2

sum=$((a+b))
sub=$((a-b))
mul=$((a*b))

echo "First Number: $a"
echo "Second Number: $b"

echo "Sum = $sum"
echo "Subtraction = $sub"
echo "Multiplication = $mul"

if [ $b -ne 0 ]
then
    div=$((a/b))
    echo "Division = $div"
else
    echo "Division not possible"
fi

echo "----------- Even Odd Check -----------"

for((i=1;i<=$#;i++))
do
    eval num=\${$i}

    if [ $((num%2)) -eq 0 ]
    then
        echo "$num is Even"
    else
        echo "$num is Odd"
    fi
done

echo "----------- Sum of All Arguments -----------"

total=0

for((i=1;i<=$#;i++))
do
    eval num=\${$i}
    total=$((total+num))
done

echo "Total Sum = $total"

echo "----------- Program End -----------"
