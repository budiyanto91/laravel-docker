# Docker container exec
- docker container exec -i -t contohredis /bin/bash

# note :
# -i adalah argument interaktif, menjaga input tetap aktif
# -t adalah argument untuk alokasi pseudo-TTY (terminal akses)
# /bin/bash contoh kode program yang terdapat di dalam container

# example using redis image:
- redis-cli
-- set hello "Hello World"
-- get hello
