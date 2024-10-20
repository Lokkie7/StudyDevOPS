resource "yandex_vpc_network" "net" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "public-subnet" {
  name           = var.subnet_name_1
  zone           = var.default_zone
  network_id     = yandex_vpc_network.net.id
  v4_cidr_blocks = var.default_cidr_1
}

resource "yandex_vpc_subnet" "private-subnet" {
  name           = var.subnet_name_2
  zone           = var.default_zone
  network_id     = yandex_vpc_network.net.id
  v4_cidr_blocks = var.default_cidr_2
}

resource "yandex_vpc_security_group" "nat-instance" {
  name       = var.nat_name
  network_id = yandex_vpc_network.net.id

  egress {
    protocol       = "ANY"
    description    = "any"
    v4_cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol       = "TCP"
    description    = "ssh"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 22
  }

  ingress {
    protocol       = "TCP"
    description    = "ext-http"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 80
  }

  ingress {
    protocol       = "TCP"
    description    = "ext-https"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 443
  }
}

resource "yandex_compute_disk" "boot-disk-nat" {
  name     = "boot-disk-nat"
  type     = "network-hdd"
  zone     = "ru-central1-a"
  size     = "20"
  image_id = "fd80mrhj8fl2oe87o4e1"
}

resource "yandex_compute_instance" "nat-instance" {
  name        = "vm-nat"
  platform_id = "standard-v3"
  zone        = "ru-central1-a"

  resources {
    core_fraction = 20
    cores         = 2
    memory        = 2
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk-nat.id
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.public-subnet.id
    security_group_ids = [yandex_vpc_security_group.nat-instance.id]
    nat                = true
  }

  metadata = {
    serial-port-enable = "${var.metadata.serial-port-enable}"
    ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
  }
}

resource "yandex_compute_image" "ubuntu-2004-lts" {
  source_family = "ubuntu-2004-lts"
}

resource "yandex_compute_disk" "boot-disk-ubuntu" {
  name     = "boot-disk-ubuntu"
  type     = "network-hdd"
  zone     = "ru-central1-a"
  size     = "20"
  image_id = yandex_compute_image.ubuntu-2004-lts.id
}

resource "yandex_compute_instance" "test-vm" {
  name        = "test-vm"
  platform_id = "standard-v3"
  zone        = "ru-central1-a"

  resources {
    core_fraction = 20
    cores         = 2
    memory        = 2
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk-ubuntu.id
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.private-subnet.id
    security_group_ids = [yandex_vpc_security_group.nat-instance.id]
  }

  metadata = {
    serial-port-enable = "${var.metadata.serial-port-enable}"
    ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
  }
}

resource "yandex_vpc_route_table" "nat-instance-route" {
  name       = "nat-instance-route"
  network_id = yandex_vpc_network.net.id
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = yandex_compute_instance.nat-instance.network_interface.0.ip_address
  }
}
