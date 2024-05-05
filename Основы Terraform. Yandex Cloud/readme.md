Задание1

Создание ключа

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/2%20-%20%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BA%D0%BB%D1%8E%D1%87%D0%B0.png)

ssh ключ

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/3%20-%20%D0%BF%D1%80%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%20%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%B9%20%D0%BA%D0%BB%D1%8E%D1%87.png)

Выполнение кода и исправление ошибок

Ошибки присутствовавшие в конфигурации terraform 1) В yandex cloud нет процессора standard-v4. (изменила на standart-v3) 2) Для standart-v3 нельзя установить параметр core_fraction = 5 .(изменила на 20) 3) Для этой платформы невозможна конфигурация с cores = 1 . (изменила на 2) 4)Исправлена строчка - subnet_id = "${yandex_vpc_subnet.develop.id}"

Инициализация терраформ

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/4%20-%20%D0%B8%D0%BD%D0%B8%D1%86%D0%B8%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F%20terraform.png)

Проверка создания машины в терминале и браузере

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/5%20-%20%D0%9F%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BC%D0%B0%D1%88%D0%B8%D0%BD%D0%B5%20%D1%87%D0%B5%D1%80%D0%B5%D0%B7%20ssh.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/5%20-%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B0%D1%8F%20%D0%BC%D0%B0%D1%88%D0%B8%D0%BD%D0%B0.png)


![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/%D0%9F%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D0%BA%D0%B0%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B3%D1%83%D1%80%D0%B0%D1%86%D0%B8%D0%B8.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%201/%D1%83%D1%81%D0%BF%D0%B5%D1%88%D0%BD%D0%BE%D0%B5%20%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5.png)

Параметры preemptible = true и core_fraction=5 помогают снизить цену тарифа на машину.

Задание2

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%202/1%20-%20main.tf.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%202/2%20-%20%D0%BF%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%202/3%20-%20%D0%9F%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D0%BA%D0%B0%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D0%B9.png)

Задание3

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%203/1%20-%20%D0%BD%D0%BE%D0%B2%D1%8B%D0%B5%20%D0%BF%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%203/2%20-%20%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9%20%D1%80%D0%B5%D1%81%D1%83%D1%80%D1%81%20%D0%B2%20main.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%203/3%20-%20%D0%B3%D0%BE%D1%82%D0%BE%D0%B2%D0%B0%D1%8F%20%D0%B2%D0%BC.png)


Задание4

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%204/1%20-%20%D1%84%D0%B0%D0%B9%D0%BB%20outputs.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%204/2%20-%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20outputs.png)

Задание5

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B55/locals.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B55/%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20%D0%BE%D0%B1%D1%8C%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BF%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B2%20main.png)


Задание6

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%206/main.png)

![alt text](https://github.com/Lokkie7/StudyDevOPS/blob/main/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B%20Terraform.%20Yandex%20Cloud/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%206/var.png)

