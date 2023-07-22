#copy set of files as pairs

if [ $# -lt 2 ]
then
echo "syntax error.\nsyntax-->$0 [filename] [filename]...."
exit
fi
r=`expr $# % 2`
if [ $r -ne 0 ]
then
echo "file name are not pairs "
exit 1
fi
while [ $# -ne 0 ]
do
if [ -f $1 -a -f $2 ]
then
cp $1 $2
echo "$1 and $2 copied"
shift
shift
else
echo "$1 and $2 copying faild"
exit 1 
fi
done

