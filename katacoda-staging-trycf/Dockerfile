FROM rscale/ubuntu-cf

ARG VERSION

RUN mkdir /home/tutorial && \
	curl -L -f "https://github.com/cloudfoundry-tutorials/sample-app/releases/download/${VERSION}/manifest.yml" --output /home/tutorial/manfiest.yml && \
	curl -L -f "https://github.com/cloudfoundry-tutorials/sample-app/releases/download/${VERSION}/sample-app.zip" --output /home/tutorial/sample-app.zip

ENV PS1 "$ "

WORKDIR /home/tutorial