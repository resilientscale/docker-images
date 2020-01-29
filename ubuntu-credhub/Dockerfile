FROM rscale/ubuntu-jq

ARG CREDHUB_VERSION

RUN echo "VERSION: ${CREDHUB_VERSION}" && \
	curl -L -f https://github.com/cloudfoundry-incubator/credhub-cli/releases/download/${CREDHUB_VERSION}/credhub-linux-${CREDHUB_VERSION}.tgz --output credhub.tgz && \
	tar -xzf credhub.tgz && \
	rm credhub.tgz && \
	mv credhub /usr/local/bin && \
	chmod +x /usr/local/bin/credhub
