# waruPortal-maintenance docker 

![Project Status](https://img.shields.io/badge/repo%20status-active-brightgreen.svg) ![Docker Image CI](https://github.com/aberWARU/waru-maintenance-docker/workflows/Docker%20Image%20CI/badge.svg) ![License](https://img.shields.io/badge/license-GNU%20GPL%20v3.0-blue.svg "GNU GPL v3.0") 


#### This is the docker container for running the waruPortal maintenance mode application, available [here](https://github.com/aberWARU/waruPortal-maintenance). 

**To deploy:**

```sh
docker run -d --name waruportal -p 80:80 docker.pkg.github.com/aberwaru/waru-maintenance-docker/waru-maintenance-docker:latest
```




