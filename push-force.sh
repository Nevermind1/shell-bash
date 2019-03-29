#!/bin/bash

#强制将本地文件push至git仓库

time=`date +"%m-%d_ %H:%M:%S"`

#核心四行
git fetch upstream
git checkout master
echo -e ":q" |git merge upstream/master
git push -u origin master

if [ $? -eq 0 ];then

echo  ${time} 'updated github successful!' >>/root/i.txt
fi
