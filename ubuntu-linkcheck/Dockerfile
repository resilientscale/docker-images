FROM rscale/ubuntu-base

ARG VERSION

RUN curl -L -f https://github.com/filiph/linkcheck/releases/download/v${VERSION}/linkcheck-linux-x64.exe --output linkcheck && \
	mv linkcheck /usr/local/bin && \
	chmod +x /usr/local/bin/linkcheck 


