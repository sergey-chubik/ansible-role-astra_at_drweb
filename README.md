Ansible Role: Astra DrWeb
=========

Эта роль установит/удалит Dr.Web из универсального пакета и выполнит настройку для ОС Astra Linux SE версий 1.6, 1.7 в соответствии с требованиями безопасности для обработки конфеденциальной информации (аттестационные мероприятия). При отсутствии подключения к Интернет, с помощью роли можно обновить антивирусные базы из копий файлов антивирусных баз (bases/, dws/, cache/update/, lib/update.st). Предполагается что универсальный установочный пакет Dr.Web и базы обновлений расположены в домашней директории пользователя в директории astra, параметр `astra_at_drweb_install_file_path: /home/user/astra`.

Requirements
------------

Для хоста, на котором запускается эта роль необходимы следующие требования:
```
rsync
```

Role Variables
--------------

Доступные переменные перечислены вместе со значениями по умолчанию в файле **defaults/main.yml**.
Переменная отвечающая за обновления антивирусных баз (по умолчанию `true`):
```
astra_at_drweb_update: true
```
Путь по которому расположены копий файлов антивирусных баз (bases/, dws/, cache/update/, lib/update.st):
```
astra_at_drweb_update_path: /home/user/astra/drweb-update
```

Dependencies
------------

Копию файлов антивирусных баз Dr.Web рекомендуется снимать при помощи скрипта `drweb_copy_update.sh`, расположенного в директории `files`.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - astra_at_drweb

License
-------

BSD

Author Information
------------------

Chubik Sergey.
