# clear all
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)

pause 2

# create new containers
docker build -t dash .
docker run -d -p 8000:8000 dash