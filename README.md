Dockerfile for deploy nginx+uwsgi+django application deploying dashboard 

# to start
1. Create a Docker Image:
<p>docker build -t dash .</p>

2. Run Docker Container:
<p>docker run -d -p 8000:8000 dash</p>

3. Follow to http://[docker-node]:8000/vpc

4. Delete
<p>docker stop [container_i]> </p>
<p> docker rm [container_id] </p>
<p> docker image rm dash</p>


