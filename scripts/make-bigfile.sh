#!/usr/bin/env bash
# A 2 MB test file (git-ignored). Also copied into site/ for step 25.
head -c 2000000 /dev/urandom > big.bin
cp big.bin site/
