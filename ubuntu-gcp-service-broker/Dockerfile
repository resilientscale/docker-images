FROM rscale/ubuntu-jq

ARG VERSION

RUN apt-get install -y musl-dev && \
  curl -L -f "https://github.com/GoogleCloudPlatform/gcp-service-broker/releases/download/v${VERSION}/gcp-service-broker-linux" --output gcp-service-broker && \
	mv gcp-service-broker /usr/local/bin/ && \
	chmod +x /usr/local/bin/gcp-service-broker 

