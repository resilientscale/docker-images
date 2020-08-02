FROM ubuntu

ARG JQ_VERSION

RUN apt update && \
	apt-get install -y curl \
	zip && \
	curl -L -f https://github.com/stedolan/jq/releases/download/${JQ_VERSION}/jq-linux64 --output jq && \
	mv jq /usr/local/bin && \
	chmod +x /usr/local/bin/jq 