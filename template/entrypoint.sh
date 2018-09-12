#!/bin/bash

 /usr/bin/crontab /etc/cron.d/cronfile && /etc/init.d/cron start && /usr/local/bin/supervisord -n -c /app/supervisor.conf