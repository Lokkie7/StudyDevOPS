Задание1
![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/2%20-%20%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BA%D0%BB%D1%8E%D1%87%D0%B0.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/3%20-%20%D0%BF%D1%80%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%20%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%B9%20%D0%BA%D0%BB%D1%8E%D1%87.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/4%20-%20%D0%B8%D0%BD%D0%B8%D1%86%D0%B8%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F%20terraform.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/5%20-%20%D0%9F%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BC%D0%B0%D1%88%D0%B8%D0%BD%D0%B5%20%D1%87%D0%B5%D1%80%D0%B5%D0%B7%20ssh.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/5%20-%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B0%D1%8F%20%D0%BC%D0%B0%D1%88%D0%B8%D0%BD%D0%B0.png)

Ошибки присутствовавшие в конфигурации terraform 1) В yandex cloud нет процессора standard-v4. (изменила на standart-v3) 2) Для standart-v3 нельзя установить параметр core_fraction = 5 .(изменила на 20) 3) Для этой платформы невозможна конфигурация с cores = 1 . (изменила на 2) 4)Исправлена строчка - subnet_id = "${yandex_vpc_subnet.develop.id}"
Параметры preemptible = true и core_fraction=5 помогают снизить цену тарифа на машину.

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/%D0%9F%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D0%BA%D0%B0%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B3%D1%83%D1%80%D0%B0%D1%86%D0%B8%D0%B8.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/%D1%83%D1%81%D0%BF%D0%B5%D1%88%D0%BD%D0%BE%D0%B5%20%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5.png)

Задание2

Задание3

Задание4

Задание5

Задание6

