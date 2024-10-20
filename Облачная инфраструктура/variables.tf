###cloud vars
variable "token" {
  type        = string
  default     = "y0_AgAAAAAbzSe1AATuwQAAAAD9usAbAABO5zMGkutHHINMJJ4_c9N2zXKZ9Q"
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
    ssh-keys           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDMw0Q4vKZBFQDEnW5dsTs4f343i0YM2BeGcZhyKvkaGvm6TXdcX4Xes2oTZ1ZE7trhn8T7675+PrQ5aTXhZyfllDWf9XZgliKHpPb6zcBvfw6Y+WfzVN3q9Cg7Y7Xt+zA40sM9WcbcYzKShGFhtSYb58tBJMcEQvfjExYySE6UOaE9mXULNNHu5knmvNuN1SYnD7276qW1E/h5+sQBj/5f4XKYwWMc1Nh2+rlevBvW3XBidHfmerIWoM1NoV/386aqy5BTfo+eYrtbNwkZ3NnGBU/2rQKzGlDVRTLvCOLM+8eoVV6IsnTe8ciPZFzEZ1guJWmyqS4j5/mWqwVdkK6t5q1s17U9c5LwFii5E7m/go6UGZhD+KVNjF808IgD5H56HR2wE7Lh6Bsy0sr/4IrrnoWN9B5HlWIgYmVcRaqebxr/i3aP0poLtEY1X4YbPo/SlvEYIbGIkt5Az1Ofjl0ZXFABt3tQ2HcEyhOfqjVjHt0Sk+Oe8cvMbBWprArjNY8="
  }
}
