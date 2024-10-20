###cloud vars
variable "token" {
  type        = string
  default     = ""
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  default     = "b1gg6k1qulpgskn6jnfm"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gtt2kdsv05v3r1fmhk"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr_1" {
  type        = list(string)
  default     = ["192.168.10.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "default_cidr_2" {
  type        = list(string)
  default     = ["192.168.20.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "net"
  description = "VPC network&subnet name"
}

variable "subnet_name_1" {
  type        = string
  default     = "public-net"
  description = "VPC network&subnet name"
}

variable "subnet_name_2" {
  type        = string
  default     = "private-net"
  description = "VPC network&subnet name"
}

variable "nat_name" {
  type        = string
  default     = "nat-instance"
}

variable "metadata" {
  description = "Tags to set for resources"
  type        = map
  default         = {
    serial-port-enable = 1
    ssh-keys           = ""
  }
}
