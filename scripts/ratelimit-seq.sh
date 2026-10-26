#!/usr/bin/env bash
# One request after another.
for i in {1..10}; do curl -s -o /dev/null -w "%{http_code}  %{time_total}s\n" http://localhost:8080/limited/; done
