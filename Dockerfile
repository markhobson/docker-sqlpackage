FROM ubuntu:16.04

# sqlpackage

ARG SQLPACKAGE_URL=https://download.microsoft.com/download/7/5/d/75d3ba2d-2f6b-46e7-a0ef-3eaba605e935/sqlpackage-linux-x64-en-US-15.0.4573.2.zip

RUN apt update \
	&& apt install -y wget zip libunwind8 libicu55 \
	&& wget -O sqlpackage-linux.zip $SQLPACKAGE_URL \
	&& mkdir /opt/sqlpackage \
	&& unzip sqlpackage-linux.zip -d /opt/sqlpackage \
	&& chmod a+x /opt/sqlpackage/sqlpackage \
	&& ln -s /opt/sqlpackage/sqlpackage /usr/bin/sqlpackage

ENTRYPOINT ["sqlpackage"]
