#!/bin/bash
# Копирование Антивирусных баз DrWeb на аттестованный компьютер
# cd astra/
# chmod u+x ./drweb_update.sh
# ./drweb_update.sh

# Путь до директории с обновлениями:
DRWEBPATH=/home/$USER/astra/drweb-update

sudo chmod u+rw -R ${DRWEBPATH}
sudo /etc/init.d/drweb-configd stop
sudo rm -rf /var/opt/drweb.com/{bases,dws,cache/update}/*
sudo rm -rf /var/opt/drweb.com/lib/update.st
for i in bases dws cache/update; do sudo cp -r ${DRWEBPATH}/$i/* /var/opt/drweb.com/$i; done
sudo cp -r ${DRWEBPATH}/lib/update.st /var/opt/drweb.com/lib/update.st
sudo /etc/init.d/drweb-configd start
echo "Update DrWeb is completed"
