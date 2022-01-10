# docker network create driver bridge
- docker network create --driver bridge mongonetwork

# docker container create, stting network, setting environtment
- docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

# docker image create from docker registry
- docker image pull mongo-express:latest

# docker container create, setting network, setting environtment
- docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://root:root@mongodb:27017/" mongo-express:latest

# docker container start
- docker container start mongodb

# docker container start
- docker container start mongodbexpress

# docker container disconnect network
- docker network disconnect mongonetwork mongodb

# docker container connect network
- docker network connect mongonetwork mongodb

# note

# environtment container mongo-express
# setting ME_CONFIG_MONGODB_URL = "mongodb://user:password@host/container name:port in container/"
