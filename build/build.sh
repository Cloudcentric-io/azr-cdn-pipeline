#! /usr/bin/sh
# arguments expected in the command line
# $1 = environment 
# $2 = cdnprofile
#
echo "Building artefacts"

time=`echo $(date)`

for value in '"https://' $2 '.azureedge.net/index.png"'; do
img+="$value"
done

echo "<b> Hello this is $1 environment </b>" >> index.html
echo "<br>" >> index.html
echo "<b> Page updated $time </b>" >> index.html
echo "<br>" >> index.html
echo "<img src=$img>" >> index.html