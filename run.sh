#!/usr/bin/env bash
# Steps 1-3 use plain Docker: one container doesn't need Compose yet.
docker run --rm --name nginx-lab -p 8080:80 \
  -v "$PWD/site":/usr/share/nginx/html:ro \
  -v "$PWD/conf.d":/etc/nginx/conf.d:ro \
  nginx:stable
