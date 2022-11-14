FROM ubuntu:20.04

# sqlpackage

ARG SQLPACKAGE_URL=https://download.microsoft.com/download/f/0/9/f091c731-45be-48fa-ae84-bc28388e3ef8/sqlpackage-linux-x64-en-16.0.6161.0.zip

RUN apt-get update \
	&& apt-get install -y wget zip libunwind8 libicu66 \
	&& wget -O sqlpackage-linux.zip $SQLPACKAGE_URL \
	&& mkdir /opt/sqlpackage \
	&& unzip sqlpackage-linux.zip -d /opt/sqlpackage \
	&& chmod a+x /opt/sqlpackage/sqlpackage \
	&& ln -s /opt/sqlpackage/sqlpackage /usr/bin/sqlpackage

ENTRYPOINT ["sqlpackage"]
