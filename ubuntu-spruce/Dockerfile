FROM rscale/ubuntu-base

ARG VERSION

RUN curl -L -f "https://github.com/geofffranks/spruce/releases/download/v${VERSION}/spruce-linux-amd64" --output spruce && \
	mv spruce /usr/local/bin && \
	chmod +x /usr/local/bin/spruce 