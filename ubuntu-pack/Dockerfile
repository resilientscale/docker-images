FROM docker

ARG VERSION

RUN (curl -sSL "https://github.com/buildpacks/pack/releases/download/v${VERSION}/pack-v${VERSION}-linux.tgz" | tar -C /usr/local/bin/ --no-same-owner -xzv pack)