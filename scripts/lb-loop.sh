#!/usr/bin/env bash
# Which worker and which backend answered? Adjust the count: workers + a few.
for i in {1..9}; do
  curl -si http://localhost:8080/api/test | grep -iE '^x-worker|^hostname'
done
