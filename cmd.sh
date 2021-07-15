#!/bin/bash
ARGS=""

if [ -n "$AUTH_PLUGIN" ];
then
   ARGS="$ARGS --default-authentication-plugin=$AUTH_PLUGIN"
fi
mysqld $ARGS
