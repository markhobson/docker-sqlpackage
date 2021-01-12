FROM ubuntu:20.10

# sqlpackage

ARG SQLPACKAGE_URL=https://download.microsoft.com/download/2/a/e/2aefe4de-8aa8-47dd-aadd-fd94efb9b3ad/sqlpackage-linux-x64-en-US-15.0.4826.1.zip

RUN apt update \
	&& apt install -y wget zip libunwind8 libicu67 \
	&& wget -O sqlpackage-linux.zip $SQLPACKAGE_URL \
	&& mkdir /opt/sqlpackage \
	&& unzip sqlpackage-linux.zip -d /opt/sqlpackage \
	&& chmod a+x /opt/sqlpackage/sqlpackage \
	&& ln -s /opt/sqlpackage/sqlpackage /usr/bin/sqlpackage

ENTRYPOINT ["sqlpackage"]
