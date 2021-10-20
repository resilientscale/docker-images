FROM owasp/zap2docker-stable

ARG VERSION

RUN mkdir -p /home/zap/bin && \
	wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && \
	mv jq-linux64 /home/zap/bin/jq && \
	chmod +x /home/zap/bin/jq && \
	pip install yq 

ENV PATH="/home/zap/bin:/home/zap/.local/bin:${PATH}"

USER root