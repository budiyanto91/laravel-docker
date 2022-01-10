# reate container, setting docker bind and setting environtment
- docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/home/elite/Catatan Coding/Programmer Zaman Now/Docker/docker-bind-mount/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

# note :
# --mount adalah perintah untuk melakukan mounting
# type adalah tipe mount, terdapat 2 tipe yaitu: bind dan volume
# source adalah lokasi file atau folder di sitem host
# destination adalah lokasi file atau folder di container
# readonly jika ada, maka file atau folder hanya bisa dibaca di container, tidak bisa ditulis
