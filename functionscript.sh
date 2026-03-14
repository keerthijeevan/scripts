
#!/bin/bash

print()
{

for((i=0;i<=20;i++))
do
if ((i%2==0))
then
echo "$i"
fi
done
}

print
