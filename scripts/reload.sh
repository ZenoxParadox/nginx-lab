#!/usr/bin/env bash
# Same as the nginx-safe-reload alias: test first, reload only if valid.
docker compose exec nginx nginx -t && docker compose exec nginx nginx -s reload
