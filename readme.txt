only app.py file is the web app

option 1: running dev server without docker-compose.yma;
---------
1. build image
docker build -t flask_app_image .
2. create and run container
docker run -it -d -p 8090:8080 --name flask_app_container flask_app_image 

Note:
port 8080 inside container mapped to 8090 host machine port 
-d is detached mode

option 2: running server using with docker-compose.yaml
---------
1. create image and container
docker-compose up --build

Result
------
open: 127.0.0.1:8090 in browser to view output.

Advantage of docker-compose.yaml
---------
no need of rebuild image or recreate container when app.py is updated. 
updated code changes are automatically reflected in the web page

