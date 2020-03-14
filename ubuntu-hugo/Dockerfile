FROM rscale/ubuntu-base

ARG VERSION

RUN curl -L -f "https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz" --output hugo.tgz && \
	tar -xzf hugo.tgz go && \
	mv go /usr/local/bin && \
	chmod +x /usr/local/bin/hugo && \
	rm hugo.tgz
	