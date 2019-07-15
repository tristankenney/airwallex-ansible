docker pull nginx:1.17
docker stop $(docker ps -a -q) || true
docker rm $(docker ps -a -q) || true

