pt to rename all ordinary files in a directory with filename.pid of shell

if [ $# -gt 1 ]
then
echo "Syntax Error.\nSyntax is <$0> <location> or <$0>"
exit 1
fi
if [ $# -eq 0 ]
then
loc=`pwd`
else
loc=$1
fi
cd $loc
for i in * 
do
if [ -f $i ]
then
mv $i $i.$$
fi
done
echo "File names changed to filename.$$"
