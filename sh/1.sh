#! /bin/bash
da=`date -d "1 day ago" +"%y%m%d"`
#cat 1.txt
        jkl=2.txt
        ls -l|grep "$jkl"
        r=$?
        if [ $r == 1 ]; then
        echo "不存在此文件"
        #exit 1
        elif [ $r == 0 ]; then
        rm -rf 2.txt
        #exit 0
        fi

filename=1.txt
while read line
do
   line="$line"_$da.txt 
#   sed -i "$a\'$line'" 2.txt
   name=$line
	echo "$name" \  >>2.txt
#	sed -i '$a\"$name"' 2.txt
	ls -l|grep "$name"
	r=$?
	if [ $r == 1 ]; then
        echo "不存在此文件" \ >>2.txt
        #exit 1
	elif [ $r == 0 ]; then
        echo "存在此文件"  \ >> 2.txt
        #exit 0
	fi
done <$filename
