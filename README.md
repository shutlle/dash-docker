Dockerfile for deploy nginx+uwsgi+django application deploying dashboard 

# to start
1. Create a Docker Image:
- docker build -t dash .

2. Run Docker Container:
- docker run -d -p 8000:8000 dash

3. Follow to http://[docker-node]:8000/vpc

4. Delete container
- docker stop [container_i]
- docker rm [container_id]
- docker rmi dash

5. All clear
- docker stop $(docker ps -a -q)
- docker rm $(docker ps -a -q)
- docker rmi $(docker images -q)



