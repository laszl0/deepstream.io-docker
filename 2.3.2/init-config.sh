#!/bin/sh
erb /config_docker.yml.erb > /etc/deepstream/config.yml
erb /permissions_docker.yml.erb > /etc/deepstream/permissions.yml