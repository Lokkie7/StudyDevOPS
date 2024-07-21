Задание 1
К сожалению похоже что доступ к дистрибутивам Grafana и Prometeus ограничен и у меня появились проблемы с запуском виртуальной машины на моей физической, поэтому я попробовала установить связку Grafana-Prometeus по инструкциям yandex-cloud в кластере kubernetes через kubectl и helm.
Сначала я настроила политики безопасности для кластера

im1

Создала кластер Managed Service for Kubernetes и узел

Установила kubectl и настроила его на работу с созданным кластером.

Установила менеджер пакетов Helm

Установила Prometheus

Установила Grafana

Веб интерфейс Grafana

Подключение prometheus как источника данных

веб-интерфейса grafana со списком подключенных Datasource

Задание 2

![image](https://github.com/user-attachments/assets/4a64f598-702c-4a49-92dd-9b1d8da77ea4)

Использованные promql-запросы:
avg(irate(node_cpu_seconds_total{instance=~"$node",mode="user"}[5m])) by (instance)
avg(irate(node_cpu_seconds_total{mode="system", instance=~"$node"}[5m])) by (instance)
avg(irate(node_cpu_seconds_total{instance=~"$node",mode="iowait"}[5m])) by (instance)
node_load1{instance=~"$node"}
node_load5{instance=~"$node"}
node_load15{instance=~"$node"}
node_memory_MemTotal_bytes
node_memory_MemAvailable_bytes
avg_over_time(node_filesystem_size_bytes{instance=~"$node",fstype=~"ext4"}[1d])
avg_over_time(node_filesystem_avail_bytes{instance=~"$node",fstype=~"ext4"}[1d])

Задание 3


Задание 4


