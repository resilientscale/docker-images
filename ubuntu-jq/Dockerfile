FROM rscale/ubuntu-base

ARG JQ_VERSION

RUN curl -L -f https://github.com/stedolan/jq/releases/download/${JQ_VERSION}/jq-linux64 --output jq && \
	mv jq /usr/local/bin && \
	chmod +x /usr/local/bin/jq 
