Ошибки присутствовавшие в конфигурации terraform
    1) В yandex cloud нет процессора standard-v4. (изменила на standart-v3)
    2) Для standart-v3 нельзя установить параметр core_fraction = 5 .(изменила на 20)
    3) Для этой платформы невозможна конфигурация с cores = 1 . (изменила на 2)
    4)Исправлена строчка - subnet_id = "${yandex_vpc_subnet.develop.id}"

Параметры preemptible = true и core_fraction=5 помогают снизить цену тарифа на машину.