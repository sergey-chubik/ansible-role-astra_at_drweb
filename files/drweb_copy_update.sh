#!/bin/bash
# Копирование Антивирусных баз DrWeb с компьютера с обновлениями:
# cd astra/
# chmod u+x ./drweb_copy_update.sh
# ./drweb_copy_update.sh

# Путь до директории с обновлениями:
DRWEBPATH=/home/$USER/astra/drweb-update

sudo rm -rf ${DRWEBPATH}
mkdir -p ${DRWEBPATH}/{cache,lib}
for i in bases dws cache/update lib/update.st; do sudo cp -a /var/opt/drweb.com/$i ${DRWEBPATH}/$i; done
sudo chown -R $USER:$USER ${DRWEBPATH}
echo "Copy bases DrWeb is completed"
