#### cara 1 ####

# stop docker container
docker container stop mongovolume

# create container, setting docker bind, setting volume
docker container create --name nginxbackup --mount "type=bind,source=/home/elite/Catatan Coding/Programmer Zaman Now/Docker/docker-bind-mount/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

# docker container start
- docker container start nginxbackup

# docker container exec
- docker container exec -i -t nginxbackup /bin/bash

# archive tar file from backup destination volume
- tar cvf /backup/backup.tar.gz /data

# docker container stop
- docker container stop nginxbackup

# docker container remove
- docker container rm nginxbackup

# docker container start
- docker container start mongovolume

##### cara 2 ####

# docker image pull from docker registry
- docker image pull ubuntu:latest

# docker container stop
- docker container stop mongovolume

# docker container create, run, remove, setting docker bind, setting docker volume, archive tar from data docker volume to folder backup host
- docker container run --rm --name ubuntubackup --mount "type=bind,source=/home/elite/Catatan Coding/Programmer Zaman Now/Docker/docker-bind-mount/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

#backup data mysql
-docker container run --rm --name ubuntubackup --mount "type=bind,source=/home/elite/Project/Learn/laravel-docker/mysql,destination=/backup" --mount "type=volume,source=laravel-docker_mysql,destination=/var/lib/mysql" ubuntu:latest tar cvf /backup/backup.tar.gz /var/lib/mysql

# docker container start
- docker container start mongovolume

# note :

# Tahapan Melakukan Backup
# Matikan container yang menggunakan volume yang ingin kita backup
# Buat container baru dengan dua mount, volume yang ingin kita backup, dan bind mount folder dari sistem host
# Lakukan backup menggunakan container dengan cara meng-archive isi volume, dan simpan di bind mount folder
# Isi file backup sekarang ada di folder sistem host
# Delete container yang kita gunakan untuk melakukan backup
# perintah backup pada cara ke 2 membutuhkan docker image yang sekali eksekusi langsung mati
