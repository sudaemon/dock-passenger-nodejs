#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

/pd_build/enable_repos.sh
/pd_build/prepare.sh
/pd_build/utilities.sh

# install node.js
/pd_build/nodejs.sh

# Must be installed after Ruby, so that we don't end up with two Ruby versions.
/pd_build/nginx-passenger.sh

/pd_build/finalize.sh
