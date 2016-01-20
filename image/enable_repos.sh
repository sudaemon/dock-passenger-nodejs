#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

## ------- Phusion Passenger

if [[ "$PASSENGER_ENTERPRISE" ]]; then
	echo deb https://download:$PASSENGER_ENTERPRISE_DOWNLOAD_TOKEN@www.phusionpassenger.com/enterprise_apt trusty main > /etc/apt/sources.list.d/passenger.list
else
	echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list
fi

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7

## ------- NodeSource's Node.js repository
## This also runs apt-get update

curl --fail -ssL -o /tmp/setup-nodejs https://deb.nodesource.com/setup_4.x

bash /tmp/setup-nodejs
rm -f /tmp/setup-nodejs
