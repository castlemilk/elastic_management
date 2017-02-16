#!/bin/sh
# Installs logstash on baremetal
# $1 - version to install
VERSION=${1:-5.2.1}
if [ -d /opt/kits/logstash/logstash-${VERSION} ]; then
	echo "logstash-${VERSION} already installed at /opt/kits/logstash/logstash-${VERSION}"
else if [ ! -z "${VERSION}" ]; then
	echo "installing logstash-${VERSION}"
	mkdir -p /opt/kits/logstash
	cd /opt/kits/logstash
	wget https://artifacts.elastic.co/downloads/logstash/logstash-${VERSION}.tar.gz
	tar xzf logstash-${VERSION}.tar.gz
	rm -rf logstash-${VERSION}.tar.gz
	echo "logstash-${VERSION} installed at /opt/kits/logstash/logstash-${VERSION}"
else
	echo "ERROR - version not specified"
fi

