#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold"