#!/bin/bash

: ${WWW_UID:=33}
: ${WWW_GID:=33}

usermod -u $WWW_UID www-data
groupmod -g $WWW_GID www-data

# Start supervisord and services
exec /usr/bin/supervisord  -n -c /etc/supervisor/supervisord.conf
