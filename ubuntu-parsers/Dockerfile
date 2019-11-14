FROM rscale/ubuntu-base

RUN curl -f https://github.com/stedolan/jq/releases/download/${JQ_VERSION}/jq-linux64 --output /usr/local/bin/jq && \
	chmod +x /usr/local/bin/jq && \
	curl -f https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_amd64 --output /usr/local/bin/yq && \
	chmod +x /usr/local/bin/yq