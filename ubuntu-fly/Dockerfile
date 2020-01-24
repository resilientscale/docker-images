FROM rscale/ubuntu-base

ARG FLY_VERSION

RUN echo "VERSION: ${FLY_VERSION}" && \
	curl -L -f https://github.com/concourse/concourse/releases/download/v${FLY_VERSION}/fly-${FLY_VERSION}-linux-amd64.tgz --output fly.tgz && \
	tar -xzf fly.tgz && \
	mv fly /usr/local/bin && \
	chmod +x /usr/local/bin/fly