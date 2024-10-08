1 - чтение из общей директории

![1 - чтение из общей директории](https://github.com/user-attachments/assets/5ca047d5-4e2c-4e33-aced-80328fc6ed27)

2 - удаление deployment и pvc

![2 - удаление deployment и pvc](https://github.com/user-attachments/assets/881a196b-e77d-43af-8bb5-38f307dd9428)

3 - файл сохранился на локальном диске ноды

PV остался в системе в состоянии Released, до этого был Bound
PV — не зависят от любого отдельного Pod поэтому с его файлами ничего не случилось

![3 - файл сохранился на локальном диске ноды](https://github.com/user-attachments/assets/44be0a3d-bad9-49cf-9226-fa97a7def18c)

4 - после удаления pv файлы все еще доступны

![4 - после удаления pv файлы все еще доступны](https://github.com/user-attachments/assets/9fe35133-3671-4d22-b3b0-68b95dea88a8)

5 - настройка nfs сервера

![5 - настройка nfs сервера](https://github.com/user-attachments/assets/42641db6-94ba-4cba-9e8c-949af76dc98a)

6 - проверка работы динамического тома

![6 - проверка работы динамического тома](https://github.com/user-attachments/assets/8cfc26c6-1555-4d2a-93e4-a1841f93ac37)
