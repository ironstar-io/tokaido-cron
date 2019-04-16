#!/usr/bin/env bash
set -eo pipefail

if ! [[ -f /tokaido/site/.tok/cron/crontab ]]; then
    echo "WARN: No crontab found, creating an empty one"
    mkdir -p /tokaido/site/.tok/cron/
    touch /tokaido/site/.tok/cron/crontab
fi

umask 002
supercronic /tokaido/site/.tok/cron/crontab