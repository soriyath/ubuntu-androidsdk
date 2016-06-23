FROM soriyath/ubuntu-swissfr:xenial
MAINTAINER Sumi Straessle

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-overwrite" install -y openjdk-9-jdk	
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y android-sdk

# Clean
RUN DEBIAN_FRONTEND=noninteractive apt-get clean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
