FROM clamav/clamav:latest
COPY clamscan.sh /clamscan.sh
RUN apk add --no-cache jq github-cli
ENTRYPOINT [ "/clamscan.sh" ]
