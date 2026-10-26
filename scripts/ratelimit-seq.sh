#!/usr/bin/env bash
# One request after another.
for i in {1..10}; do curl -s -o /dev/null --cacert certs/lab.crt -w "%{http_code}  %{time_total}s\n" https://localhost:8443/limited/; done
