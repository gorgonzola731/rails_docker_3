#!/bin/bash
set -e
rm -f /myapp/tmp/pids/server.pid
exec "$@"

if [ "${RAILS_ENV}" = "production" ]
then
    bundle exec rails assets:precompile
fi