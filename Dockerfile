FROM ubuntu:16.04

# sqlpackage

ARG SQLPACKAGE_URL=https://download.microsoft.com/download/0/2/0/020aa2fa-f3f2-41ba-bacd-ff15557890d3/sqlpackage-linux-x64-en-US-15.0.5084.2.zip

RUN apt update \
	&& apt install -y wget zip libunwind8 libicu55 \
	&& wget -O sqlpackage-linux.zip $SQLPACKAGE_URL \
	&& mkdir /opt/sqlpackage \
	&& unzip sqlpackage-linux.zip -d /opt/sqlpackage \
	&& chmod a+x /opt/sqlpackage/sqlpackage \
	&& ln -s /opt/sqlpackage/sqlpackage /usr/bin/sqlpackage

ENTRYPOINT ["sqlpackage"]
