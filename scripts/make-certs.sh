#!/usr/bin/env bash
# Self-signed certificate for the lab. certs/ is git-ignored on purpose.
mkdir -p certs
openssl req -x509 -newkey rsa:2048 -nodes \
  -keyout certs/lab.key -out certs/lab.crt \
  -days 30 -subj "/CN=localhost"
