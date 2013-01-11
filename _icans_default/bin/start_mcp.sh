#!/bin/bash
APP='mcp'
BASEPATH=$(dirname $(readlink -f $0))
NODE="-sname $APP"
COOKIE=$(cat $BASEPATH/.cookie)

while getopts n: OPTION
do
	case $OPTION in
		n)
			if [ '@1' = "$(echo $OPTARG | tr -dc '@')1"; then
				NODE="-name $OPTARG"
			else
				NODE="-sname $OPTARG"
			fi
			;;
	esac
done

erl $NODE -pa $BASEPATH/*/deps/*/ebin $BASEPATH/*/ebin -setcookie "$COOKIE" -boot start_sasl -sasl_error_logger '{file, "logs/mcp.log"}' -smp auto -run mcp start
