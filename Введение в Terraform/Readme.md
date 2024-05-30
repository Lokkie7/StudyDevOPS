1.Перенос проекта на свою машину




2. Судя по файлу .gitignore личную информацию допустимо хранить в personal.auto.tfvars

3. Содержание ресурса random_password.random_string
4. Не было указано правильно название resourse, имя образа nginx было указано неправильно, обращение к ключу было прописано неправильно.
5. Исправленный код

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
  required_version = ">=0.13" /*Многострочный комментарий.
 Требуемая версия terraform */
}
provider "docker" {}

#однострочный комментарий

resource "random_password" "random_string" {
  length      = 16
  special     = false
  min_upper   = 1
  min_lower   = 1
  min_numeric = 1
}


resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "hello_world"

  ports {
    internal = 80
    external = 9090
  }
}


6. Опасность использования -auto-approve состоит в том что конфигурация считается правильной без верификации человеком. Это может привести к непредсказуемым последствиям)



7. terraform destroy
   terraform.tfstate.
{
  "version": 4,
  "terraform_version": "1.8.2",
  "serial": 17,
  "lineage": "2818bfbf-92e0-df2e-232a-0244ad612609",
  "outputs": {},
  "resources": [],
  "check_results": null
}

8. Потому что установлена опция keep_locally = true
   
