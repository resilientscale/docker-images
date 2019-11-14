FROM alpine

RUN apk add --update --no-cache \
  ca-certificates \
  bash \
  curl \
  jq \
  zip \
  openssh-client \
  git \
  wget && \
  update-ca-certificates 2>/dev/null || true && \
  sed -i -e 's/ash/bash/g' /etc/passwd && \
  wget https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64 && \
  mv yq_* /usr/local/bin/yq && \
  chmod +x /usr/local/bin/yq
