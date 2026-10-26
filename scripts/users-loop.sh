#!/usr/bin/env bash
# Alice and Bob, five requests each, all at the same time.
( for u in alice bob; do
    for i in {1..5}; do
      curl -s -o /dev/null --cacert certs/lab.crt \
        -H "Authorization: Bearer token-$u" \
        -w "$u  %{http_code}\n" https://localhost:8443/secure/data &
    done
  done; wait ) | sort
