resource "yandex_storage_bucket" "test-my81253" {
  bucket                = "da-cto-tebe-nado"
  max_size              = 20000
  default_storage_class = "standard"
  anonymous_access_flags {
    read        = true
    list        = true
    config_read = true
  }
}

resource "yandex_storage_object" "test-object" {
  bucket     = "da-cto-tebe-nado"
  key        = "image.png"
  source     = "/home/lokkie7/terraform/vpc/cloud-terraform/fox.png"
}

