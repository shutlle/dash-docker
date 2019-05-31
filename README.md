Dockerfile for deploy nginx+uwsgi+django application deploying dashboard 

# run
1. Create a Docker Image:
- docker build -t dash .

2. Run Docker Container:
- docker run -d -p 8000:8000 dash
