#!/usr/bin/env bash
# Status, which backend(s) were tried, and how long it took.
for i in {1..9}; do
  curl -s -o /dev/null --cacert certs/lab.crt \
    -w "%{http_code}  %header{x-upstream}  %{time_total}s\n" \
    https://localhost:8443/api/test
done
