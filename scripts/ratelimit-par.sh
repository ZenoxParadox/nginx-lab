#!/usr/bin/env bash
# All at once. The parentheses keep the shell's job messages quiet.
( for i in {1..10}; do curl -s -o /dev/null -w "%{http_code}  %{time_total}s\n" http://localhost:8080/limited/ & done; wait )
