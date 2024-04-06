Задание 0 - 3 
Скриншоты в репозитории

Задание 4
Проверка доступности - скриншот


Скрипт 

#!/bin/sh

sudo git clone https://github.com/Lokkie7/shvirtd-example-python-fork /opt/new
sudo docker compose -f /opt/new/compose.yaml up

https://github.com/Lokkie7/shvirtd-example-python-fork/tree/main - форк репозиторий

Задание 6
У меня не получилось выполнить задание 6 - только 6.1
Я не нашла каким образом из образа достать файл - только о том как достать файл уже из контейнера.
docker save дает мне tar архив - но в нем только инструкции , нужного мне файла там нет
в dive я вижу вщслукашду и всё...