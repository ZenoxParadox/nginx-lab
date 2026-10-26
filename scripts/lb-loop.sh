#!/usr/bin/env bash
# Which worker and which backend answered? Adjust the count: workers + a few.
for i in {1..9}; do
  curl -si --cacert certs/lab.crt https://localhost:8443/api/test | grep -iE '^x-worker|^hostname'
done
