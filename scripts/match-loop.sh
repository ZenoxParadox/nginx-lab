#!/usr/bin/env bash
# Step 12: write down your A-E guesses first!
for p in /match/hello /match/images/cat.jpg /match/images/cat.png \
         /match/exact /match/exact/ /match/static/logo.png; do
  printf '%-26s %s\n' "$p" "$(curl -s http://localhost:8080$p)"
done
