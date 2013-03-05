#!/bin/bash
BASEDIR=$(readlink -f "$(dirname $0)/..")
NODE="-name {{projectid}}@$(hostname --fqd)"

cd $BASEDIR 

erl $NODE -args_file $BASEDIR/config/{{projectid}}.node.args -pa $BASEDIR/deps/*/ebin $BASEDIR/ebin $BASEDIR/src/apps/*/deps/*/ebin $BASEDIR/src/apps/*/ebin -run {{projectid}} start
