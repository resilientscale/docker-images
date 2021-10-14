FROM docker

ARG VERSION

RUN apt-get update && \	
	apt-get install software-properties-common -y &&\
	apt-get update && \
	add-apt-repository ppa:cncf-buildpacks/pack-cli && \
	apt-get update && \
	apt-get install pack-cli -y