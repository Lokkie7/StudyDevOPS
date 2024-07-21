Задание 1
К сожалению похоже что доступ к дистрибутивам Grafana и Prometeus ограничен и у меня появились проблемы с запуском виртуальной машины на моей физической, поэтому я попробовала установить связку Grafana-Prometeus по инструкциям yandex-cloud в кластере kubernetes через kubectl и helm.
Сначала я настроила политики безопасности для кластера

Создала группы безопасности
![image](https://github.com/Lokkie7/StudyDevOPS/blob/main/Grafana/1-%D0%A1%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%20%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D0%B8.png)

Создала кластер Managed Service for Kubernetes и узел

![image]()

Установила kubectl и настроила его на работу с созданным кластером.

![image]()

Установила менеджер пакетов Helm

![image]()

Установила Prometheus

![image]()

Установила Grafana

![image]()

Веб интерфейс Grafana

![image]()

Подключение prometheus как источника данных

![image]()

веб-интерфейса grafana со списком подключенных Datasource

![image]()

Задание 2

![image](https://github.com/user-attachments/assets/4a64f598-702c-4a49-92dd-9b1d8da77ea4)

Использованные promql-запросы:

avg(irate(node_cpu_seconds_total{instance=~"$node",mode="user"}[5m])) by (instance);

avg(irate(node_cpu_seconds_total{mode="system", instance=~"$node"}[5m])) by (instance);

avg(irate(node_cpu_seconds_total{instance=~"$node",mode="iowait"}[5m])) by (instance);

node_load1{instance=~"$node"};

node_load5{instance=~"$node"};

node_load15{instance=~"$node"};

node_memory_MemTotal_bytes;

node_memory_MemAvailable_bytes;

avg_over_time(node_filesystem_size_bytes{instance=~"$node",fstype=~"ext4"}[1d]);

avg_over_time(node_filesystem_avail_bytes{instance=~"$node",fstype=~"ext4"}[1d])

Задание 3


Задание 4


