# docker list all container
- docker container ls -a

# docker list container run
- docker container ls

# docker create container
- docker container create --name contohredis redis:latest

# docker create container by same image
- docker container create --name contohredis2 redis:latest

# docker container start
- docker container start contohredis
- docker container start contohredis2

#docker container stop
- docker container stop contohredis
- docker container stop contohredis2

# docker remove container
- docker container rm contohredis
- docker container rm contohredis2
