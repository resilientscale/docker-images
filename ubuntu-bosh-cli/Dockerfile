FROM rscale/ubuntu-base

ARG VERSION

RUN curl -L -f "https://github.com/cloudfoundry/bosh-cli/releases/download/v${VERSION}/bosh-cli-${VERSION}-linux-amd64" --output bosh && \
	mv bosh /usr/local/bin/bosh && \
	chmod +x /usr/local/bin/bosh 
