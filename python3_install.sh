**++可能报错++**
**urlgrabber-ext-down错误**
**vim /usr/libexec/urlgrabber-ext-down**
**/usr/bin/python -> /usr/bin/python2.7**


**install_python2&3.sh**
```
#!/bin/bash
cd /tmp
yum -y install openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel gcc
if [ $? -eq 0 ];then
 wget https://www.python.org/ftp/python/3.6.6/Python-3.6.6.tar.xz
else
echo "安装依赖包失败"
exit 2
fi
tar -xvf Python-3.6.6.tar.xz && cd Python-3.6.6
./configure --prefix=/usr/local/python3.6/
make && make install

mv /usr/bin/python{,.bak}
mv /usr/bin/pip{,.bak}
ln -s /usr/local/python3.6/bin/python3.6 /usr/bin/python
ln -s /usr/local/python3.6/bin/pip3.6 /usr/bin/pip

sed -i '/python$/s/$/2.7/' /usr/bin/yum
rm -f $0

```

