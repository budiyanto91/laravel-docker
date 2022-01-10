# show docker network list
- docker network ls

# docker network create driver bridge
- docker network create --driver bridge contohnetwork

# docker network remove
- docker network rm contohnetwork

# note :

# Network Driver
# bridge, yaitu driver yang digunakan untuk membuat network secara virtual yang memungkinkan container yang terkoneksi di bridge network yang sama saling berkomunikasi
# host, yaitu driver yang digunakan untuk membuat network yang sama dengan sistem host. host hanya jalan di Docker Linux, tidak bisa digunakan di Mac atau Windows
# none, yaitu driver untuk membuat network yang tidak bisa berkomunikasi 
