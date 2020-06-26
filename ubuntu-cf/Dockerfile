FROM rscale/ubuntu-base

ARG VERSION

RUN curl -L -f "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=${VERSION}&source=github-rel" --output cf.tgz && \
	tar -xzf cf.tgz cf7 && \
	mv cf7 /usr/local/bin/cf && \
	chmod +x /usr/local/bin/cf && \
	rm cf.tgz
