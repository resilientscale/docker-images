FROM clamav/clamav:latest
ARG Version
COPY clamscan.sh /clamscan.sh
RUN apk add --no-cache jq github-cli
ENTRYPOINT [ "/clamscan.sh" ]
