#!/bin/bash

SCRIPTDIR=$(cd $(dirname "$0") && pwd)
HOMEDIR="$SCRIPTDIR/../../../"

# clone utilties repo. in order to run scanCode.py
cd $HOMEDIR
git clone https://github.com/apache/incubator-openwhisk-utilities.git

# shallow clone OpenWhisk repo.
git clone --depth 1 https://github.com/apache/incubator-openwhisk.git openwhisk

cd openwhisk
./tools/travis/setup.sh