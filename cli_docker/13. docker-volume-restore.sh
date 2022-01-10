# create docker volume
- docker volume create mongorestore

# docker container create, run, remove, setting docker bind, setting docker volume
- docker container run --rm --name ubunturestore --mount "type=bind,source=/home/elite/Catatan Coding/Programmer Zaman Now/Docker/docker-bind-mount/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

# docker container create, setting docker volume and setting environtment, restore archive host to docker volume
- docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

# docker container start
- docker container start mongorestore

# note ;

# Tahapan Melakukan Restore
# Buat volume baru untuk lokasi restore data backup
# Buat container baru dengan dua mount, volume baru untuk restore backup, dan bind mount folder dari sistem host yang berisi file backup
# Lakukan restore menggunakan container dengan cara meng-extract isi backup file ke dalam volume
# Isi file backup sekarang sudah di restore ke volume
# Delete container yang kita gunakan untuk melakukan restore
# Volume baru yang berisi data backup siap digunakan oleh container baru
