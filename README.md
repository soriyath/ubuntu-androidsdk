# ubuntu-androidstudio

> stock androidstudio on ubuntu with swiss french localization

## Run ubuntu-swissfr
```
docker pull soriyath/ubuntu-androidstdio
docker run -it ubuntu-androidstudio bash
```

## Use it as a base image in a Dockerfile
```
FROM soriyath:ubuntu-androidstudio
MAINTAINER Miles Bennett Dyson (google it !)

RUN apt-get update \
	&& apt-get install -y <your_dependencies>

VOLUME <your_shared_volume>
CMD [<your_startup_commands>]
```