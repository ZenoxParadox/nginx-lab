#!/usr/bin/env bash
# Test the config first; only reload if it's valid.
docker exec nginx-lab nginx -t && docker exec nginx-lab nginx -s reload
