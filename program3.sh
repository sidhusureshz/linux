#check whether three given sides form a triangle using triangle inequality rule
echo "Enter three sides"
read a b c
if [ $(($a + $b)) -gt $c ] && 
   [ $(($a + $c)) -gt $b ] && 
   [ $(($b + $c)) -gt $a ] 
then
echo "It is triangle"
if [ $a -eq  $b ] &&  [ $b -eq  $c ]
then 
echo "it is an equilateral triangle"
elif [ $a -eq $b ] || [ $a -eq -$c ] || [ $b -eq $c ]
then
echo "it is an isoseles triangle"
fi
if [ $((a*a + b*b)) -eq $((c*c)) ] || \ 
   [ $((a*a + c*c)) -eq $((b*b)) ] || \
   [ $((b*b + c*c)) -eq $((a*a)) ] 
then
echo "it is right angled triangle"
fi
else
echo "It is not a triangle"
fi
