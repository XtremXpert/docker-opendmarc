FROM debian:latest
MAINTAINER Benoît "XtremXpert" Vézina  <xtremxpert@xtremxpert.com>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
  && apt-get install -y opendmarc \
  && rm -rf /var/lib/apt/lists/*

EXPOSE 8893/tcp

ENTRYPOINT ["opendmarc", "-f", "-c", "/etc/opendmarc.conf", "-u", "opendmarc"]
