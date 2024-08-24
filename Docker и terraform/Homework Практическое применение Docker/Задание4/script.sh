#!/bin/sh

sudo git clone https://github.com/Lokkie7/shvirtd-example-python-fork /opt/new
sudo docker compose -f /opt/new/compose.yaml up
