FROM rscale/alpine-base

RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&source=github" | tar -zx && \
  mv cf /usr/local/bin && \
  chmod +x /usr/local/bin/cf && \
  apk add --update --no-cache apache2-utils
