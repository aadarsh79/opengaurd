FROM debian:bullseye
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
COPY scripts /scripts
RUN bash /scripts/install-deps.sh && \
 date > /ogbase-build-date
ENTRYPOINT ["/bin/bash"] 
