# create docker volume
- docker volume create mongodata

# docker container create, setting docker volume and setting environtment
- docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

# stop docker container
- docker container stop mongovolume

# remove docker container
- docker container rm mongovolume


# note :
# --mount adalah perintah untuk melakukan mounting
# type adalah tipe mount, terdapat 2 tipe yaitu: bind dan volume
# source adalah lokasi file atau folder di sitem host
# destination adalah lokasi file atau folder di container
# readonly jika ada, maka file atau folder hanya bisa dibaca di container, tidak bisa ditulis

# Docker Volume mirip dengan Bind Mounts, bedanya adalah terdapat management Volume, dimana kita bisa membuat Volume, melihat daftar Volume, dan menghapus Volume.

# Volume sendiri bisa dianggap storage yang digunakan untuk menyimpan data, bedanya dengan Bind Mounts, pada bind mounts, data disimpan pada sistem host, sedangkan pada volume, data di manage oleh Docker
