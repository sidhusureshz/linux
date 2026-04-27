if [ $# -ne 3 ]
then 
echo "Syntax is: sh $0 <no1> <op> <no2>"
exit 1
fi
a=$1
op=$2
b=$3
case $op in
+)
echo $(expr $a + $b) ;;
-)
echo $(expr $a - $b) ;;
x)
echo $(expr $a \* $b) ;;
/)
echo $(expr $a / $b) ;;
*)
echo "Invalid Operation" 
esac



