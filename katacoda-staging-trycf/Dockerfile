FROM rscale/ubuntu-cf

ARG VERSION

RUN mkdir /home/tutorial && \
	curl -L -f "https://github.com/cloudfoundry-tutorials/sample-app/releases/download/${VERSION}/manifest.yml" --output /home/tutorial/manfiest.yml && \
	curl -L -f "https://github.com/cloudfoundry-tutorials/sample-app/releases/download/${VERSION}/sample-app.zip" --output /home/tutorial/sample-app.zip && \
	echo 'export PS1="$ "' >> /root/.bash_profile && \
	echo 'setup.sh' >> /root/.bash_profile

ADD ./setup.sh /usr/local/bin/setup.sh

WORKDIR /home/tutorial
