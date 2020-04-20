# waruPortal-maintenance docker 

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active) ![Docker Image CI](https://github.com/aberWARU/waru-maintenance-docker/workflows/Docker%20Image%20CI/badge.svg) ![License](https://img.shields.io/badge/license-GNU%20GPL%20v3.0-blue.svg "GNU GPL v3.0") 


#### This is the docker container for running the waruPortal maintenance mode application, available [here](https://github.com/aberWARU/waruPortal-maintenance). 

**To deploy:**

```sh
docker run -d --name waruportal -p 80:80 docker.pkg.github.com/aberwaru/waru-maintenance-docker/waru-maintenance-docker:latest
```




