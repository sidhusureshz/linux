#to check whether the number is palindrome or not 
echo "enter a number"
read num

rev=0
temp=$num

while [ $num -gt 0 ]
do
rem=$((num % 10))
rev=$((rev * 10 + rem))
num=$((num / 10))
done
if [ $temp -eq $rev ]
then 
echo "Palindrome Number"
else
echo "Not a palindrome"
fi


