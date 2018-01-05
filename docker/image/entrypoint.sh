#!/bin/sh

echo "host: 0.0.0.0" | tee \
    ~/.hal/default/service-settings/gate.yml \
    ~/.hal/default/service-settings/deck.yml

exec "$@"
