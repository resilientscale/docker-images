FROM rscale/ubuntu-cf

ARG VERSION

RUN mkdir /home/tutorial && \
	curl -L -f "https://github.com/cloudfoundry-tutorials/sample-app/releases/download/${VERSION}/manifest.yml" --output /home/tutorial/manifest.yml && \
	curl -L -f "https://github.com/cloudfoundry-tutorials/sample-app/releases/download/${VERSION}/sample-app.zip" --output /home/tutorial/sample-app.zip && \
	echo '# Katacoda hacks and styling' >> /root/.bashrc && \
	echo 'export PS1="$ "' >> /root/.bashrc && \
	echo './.setup.sh' >> /root/.bashrc

ADD ./includes/setup.sh /home/tutorial/.setup.sh

WORKDIR /home/tutorial