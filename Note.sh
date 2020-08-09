# Create Bridge Docker Network
docker network create -d bridge --subnet 192.168.0.0/24 --gateway 192.168.0.1 mynet

# Stop all container
docker stop $(docker ps -aq)

# Remove all container
docker rm -f $(docker ps -a -q)

# Remove all image
docker rmi $(docker images -q)

# Install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)"  -o /usr/local/bin/docker-compose
sudo mv /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

# Folder save source code: /usr/local/src

# Run and build image
docker-compose up --build -d