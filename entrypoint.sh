#!/bin/sh
rake assets:precompile
rake db:migrate
exec "$@"