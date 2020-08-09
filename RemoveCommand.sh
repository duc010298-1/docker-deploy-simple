docker stop $(docker ps -aq)
docker rm -f $(docker ps -a -q)
docker rmi $(docker images -q)