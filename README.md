# docker-alpine-haproxy

This dockerfile installs only some package of haproxy.  
Not compiling any sources which exist in apline linux repos.  

Environment variables
---

| variables | example values | description |
| --------- | ------ | ----------- |
| no values  |  |  |

## Quick Start

	$ docker run -d --name my-running-haproxy -v /path/to/etc/haproxy:/usr/local/etc/haproxy:ro toshi0123/docker-alpine-haproxy:latest

## Reloading config

	$ docker kill -s HUP my-running-haproxy

This docker-alpine-haproxy uses `haproxy -sf`. 

## show stat of server

Check server status shown as follows.

	$ docker exec my-running-haproxy /bin/sh -c 'echo "show stat" | socat - [socket file path]'

## Enable/Disable servers

enable or disable server shown as follows.

	$ docker exec my-running-haproxy /bin/sh -c 'echo "enable server [frontend]/[backend server name]" | socat - [socket file path]'

or

	$ docker exec my-running-haproxy /bin/sh -c 'echo "disable server [frontend]/[backend server name]" | socat - [socket file path]'
