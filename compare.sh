if [ $# -ne 2 ]
then 
echo "Syntax <$0><file1> <file2>"
exit 2
fi
if [ -f $2  -a  -f $2 ]
then 
cmp $2 $2 > /dev/null
if [ $? -eq 0 ]
then
echo "files are same "
rm -f $2
echo "$2 deleted"
else
echo "file $1 and $2 are not  same "
fi
else
echo "files are not ordinary files are readable!"
fi
