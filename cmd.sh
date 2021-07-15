#!/bin/bash
if [ "${1:0:1}" = '-' ]; then
	set -- mysqld "$@"
fi

if [ -n "$AUTH_PLUGIN" ];
then
  set -- "$@" "--default-authentication-plugin=$AUTH_PLUGIN"
fi
/usr/local/bin/docker-entrypoint.sh $@
