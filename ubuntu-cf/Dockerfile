FROM rscale/ubuntu-base

ARG VERSION

RUN curl -L -f "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=${VERSION}&source=github-rel" --output cf.tgz && \
	tar -xzf cf.tgz cf && \
	mv cf /usr/local/bin && \
	chmod +x /usr/local/bin/cf && \
	rm cf.tgz