Почему-то мне недоступна зона b для создания , я создала машину в зоне a.

Выходит ошибка 
╷
│ Error: Error while requesting API to create instance: server-request-id = 839357ac-dc7b-4d9d-ba73-819cb5ad6fa6 server-trace-id = 41ea9e4a761bd6da:4f57574a1a553c79:41ea9e4a761bd6da:1 client-request-id = 0a2518a9-ec94-478a-b9dc-f61dfcf15067 client-trace-id = 42976d07-a242-4f67-bf19-1bbab163c2f2 rpc error: code = InvalidArgument desc = Illegal argument subnet_id.zone_id
│
│   with yandex_compute_instance.platform2,
│   on main.tf line 43, in resource "yandex_compute_instance" "platform2":
│   43: resource "yandex_compute_instance" "platform2" {
│
Но, это должно настраиваться параметром zone