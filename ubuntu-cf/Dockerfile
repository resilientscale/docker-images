FROM rscale/ubuntu-yq

ARG VERSION

RUN curl -L -f "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=${VERSION}&source=github-rel" --output cf.tgz && \
	tar -xzf cf.tgz cf8 && \
	mv cf8 /usr/local/bin/cf && \
	chmod +x /usr/local/bin/cf && \
	rm cf.tgz