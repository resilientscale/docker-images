FROM rscale/ubuntu-bosh-cli

ARG VERSION

RUN curl -L -f "https://github.com/EngineerBetter/control-tower/releases/download/${VERSION}/control-tower-linux-amd64" --output control-tower && \
	mv control-tower /usr/local/bin/control-tower && \
	chmod +x /usr/local/bin/control-tower
