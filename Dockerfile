FROM owasp/dependency-check:latest

ARG NVD_API_KEY
RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly --nvdApiKey ${NVD_API_KEY}

CMD ["--help"]
ENTRYPOINT [ "/usr/share/dependency-check/bin/dependency-check.sh", "--noupdate" ]