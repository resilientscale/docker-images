FROM rscale/ubuntu-base

ARG VERSION

RUN curl -L -f "https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_Linux-64bit.tar.gz" --output hugo.tgz && \
	tar -xzf hugo.tgz hugo && \
	mv hugo /usr/local/bin && \
	chmod +x /usr/local/bin/hugo && \
	rm hugo.tgz