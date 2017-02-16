#!/bin/sh
VERSION=4.2.6
if [ -f /bin/pip ]; then
	echo "installing elasticsearch-curator [VERSION: $VERSION]"
	pip install elasticsearch-curator==$VERSION
	echo "making dir: config/ for curator config and action config"
	mkdir ./config/
else
	echo "pip not found, installing now"
	yum install python-pip -y
	echo "installing elasticsearch-curator [VERSION: $VERSION]"
	pip install elasticsearch-curator==$VERSION
	echo "making dir: config/ for curator config and action config"
	mkdir ./config/
fi
