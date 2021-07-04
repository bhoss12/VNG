# VNG

## `CheetSheet` 
### Cloud Native Workshop

## Prerequisite Module 1
#### Note - Windows Users, Refer to '`Windows-PreReq-CloudNativeWorkshop-1.pdf`'

1. Download & Install [Docker Desktop](https://www.docker.com/products/docker-desktop) on the laptop.
2. Create and Signin to [Docker Hub](https://hub.docker.com/)

### Module 1

* Define App
  * Simple web application based on Flask to host content, accessible by URL in a browser.
  * Use Python, Flask to build App.
  * Install Python and Flask.
* Build & Run `app` locally.
* Clone http  or Download and unzip ``.
* Run App 
```
# Open Terminal
# If Cloned - Checkout branch `cnc_wkp_flask`
$ cd cnc-wkp-flask-app
.
├── Dockerfile
└── app.py

$ python3 app.py
$ curl http://localhost:5000
$ kill <PID>
```

* Package App in a Docker Container
  * Create / View Dockerfile
```
# Open Terminal
$ cd cnc-wkp-flask-app
cat Dockerfile
```
* Build & Check Docker Image
```
$ docker build -t cncwkp-py-app:latest .
$ docker images cncwkp-py-app
```
* Run Docker Container with Image.
```
$ docker run -p 5000:5000 --name cncwkp -d cncwkp-py-app:latest
$ curl http://localhost:5000
```
* Create / Upload Image to Docker Hub
  * <repo> = DockerID
```
$ docker tag cncwkp-py-app:latest <repo>/cncwkp-py-app:latest
$ docker login
$ docker push <repo>/cncwkp-py-app:latest

$ docker pull <repo>/cncwkp-py-app:latest
```
