FROM rscale/ubuntu-jq

RUN apt-get update && \
	apt-get install -y python3-pip && \
	pip install yq && \
	rm -rf /var/lib/apt/lists/*	
