FROM rscale/ubuntu-jq

ARG VERSION

RUN curl -L -f "https://github.com/pivotal/cloud-service-broker/releases/download/${VERSION}/cloud-service-broker" --output cloud-service-broker && \
  mv cloud-service-broker /usr/local/bin/ && \
  chmod +x /usr/local/bin/cloud-service-broker 
