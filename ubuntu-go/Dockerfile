FROM rscale/ubuntu-base

ARG VERSION

RUN curl -L -f "https://dl.google.com/go/${VERSION}.linux-amd64.tar.gz" --output go.tgz && \
	tar -xzf go.tgz go && \
	mv go /usr/local/bin && \
	chmod +x /usr/local/bin/go && \
	rm go.tgz
