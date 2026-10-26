#!/usr/bin/env bash
# Step 12: write down your A-E guesses first!
for p in /match/hello /match/images/cat.jpg /match/images/cat.png \
         /match/exact /match/exact/ /match/static/logo.png; do
  printf '%-26s %s\n' "$p" "$(curl -s --cacert certs/lab.crt https://localhost:8443$p)"
done
