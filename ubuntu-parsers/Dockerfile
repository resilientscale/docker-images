FROM rscale/ubuntu-base

ARG $JQ_VERSION
ARG $YQ_VERSION

RUN echo "jq: ${JQ_VERSION}" && \
	echo "yq: ${YQ_VERSION}" &&\
	curl -f https://github.com/stedolan/jq/releases/download/${JQ_VERSION}/jq-linux64 --output jq && \
	mv jq /usr/local/bin && \
	chmod +x /usr/local/bin/jq && \
	curl -f https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_amd64 --output yq && \
	mv yq /usr/local/bin && \
	chmod +x /usr/local/bin/yq