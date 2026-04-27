# check whether it is triangle or not using three given sides(also check whether it is iscoceles,equilateral and right angled)
if [ $# -ne 3 ]
then
    echo "Syntax is $0 number"
exit 1
fi
a=$1
b=$2
c=$3
if [ $a -gt $b ]
then
temp=$a
a=$b
b=$temp
fi
if [ $b -gt $c ]
then
temp=$b
b=$c
c=$temp
fi
if [ `expr $a + $b` -gt $c ]
then
echo "Triangle is formed"
else
echo "Triangle is not  formed"
exit 1
fi
if [ $a -eq $b -a $b -eq $c ]
then
echo "it is an equilateral triangle"
elif [ $((a*a + b*b)) -eq $((c*c)) ]
then
echo "right angled triangle"
elif [ $a -eq $b -o $a -eq $c -o $b -eq $c ]
then
echo "iscoceles triangle"
else
echo "not a normal triangle"
fi 
exit 0
