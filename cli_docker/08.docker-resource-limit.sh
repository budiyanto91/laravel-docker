# Docker container resource limit
- docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest

# note:
# untuk memberikan resource limit terhadap container nya agar tidak terlalu banyak memakan CPU dan Memory

# --memory 100m (maksimal memory 100 mega bytes)
# --cpus 0.5 (maksimal cpu 0.5 core)

