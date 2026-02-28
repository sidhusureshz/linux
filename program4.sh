#to check whether the given number is prime or not
echo "enter a number"
read n
i=2
while [ $i -lt $n ]
do
if [ $((n % i)) -eq 0 ]
then
echo "Not a prime number"
exit
fi
i=$((i + 1))
done
echo "It is a prime number"



