if [ $# -ne 2 ]
then 
echo "\nSyntax is <$0> <file1.txt> <file2.txt> "
exit 1
fi
if [ ! -f $1 ]
then
echo "$1 is not existing or not an ordinary file"
exit 2
fi
if [ -f $2 ]
then
echo "Target file exist,Do you want to over write it(Y/N)"
read ans
if [ $ans = "N" ]
then
exit 3
fi
fi
cp $1 $2
echo "file copied"
