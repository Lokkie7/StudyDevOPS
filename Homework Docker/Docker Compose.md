Задание №1
https://hub.docker.com/repository/docker/lokkie7/custom-nginx/general

Задание №2
Скриншоты в папке - Задание2

Задание №3
Скриншоты в папке - Задание3

Задание №4

Задание №5
Какой из файлов был запущен и почему?
- Сначала запустился только файл compose.yaml, потому, что новые версии docker-compose считают его предпочтительным для выполнения. Если бы у меня стояла более ранняя версия или параметры совместимости версий - то запустился бы другой файл.

Листинг исправленного compose.yaml
lokkie7@orchestra:~/docker_test/task5$ cat compose.yaml
version: "3"
include:
  - docker-compose.yaml
services:
  portainer:
    image: portainer/portainer-ce:latest
    network_mode: host
    ports:
      - "9000:9000"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock

Прочитайте warning, объясните суть предупреждения и выполните предложенное действие.
 - WARN[0000] /home/lokkie7/docker_test/task5/docker-compose.yaml: `version` is obsolete
WARN[0000] Found orphan containers ([task5-portainer-1]) for this project. If you removed or renamed this service in your compose file, you can run this command with the --remove-orphans flag to clean it up.
 - Предупреждение говорит о том что найдены бесхозные контейнеры для данного проекта. Просит удалить их.
