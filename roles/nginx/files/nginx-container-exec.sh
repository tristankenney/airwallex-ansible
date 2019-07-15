docker run -d \
     --name=nginx \
     --health-cmd='curl --fail http://nginx.host.com || exit 1' \
     --health-interval=5m \
     --health-timeout=3s \
     -p 80:80 \
     nginx:1.17

# Allow container to come up
sleep 5