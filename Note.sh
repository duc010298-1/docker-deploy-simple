# Create Bridge Docker Network
docker network create -d bridge --subnet 192.168.0.0/24 --gateway 192.168.0.1 mynet

# Stop all container
docker stop $(docker ps -aq)

# Remove all container
docker rm -f $(docker ps -a -q)

# Remove all image
docker rmi $(docker images -q)