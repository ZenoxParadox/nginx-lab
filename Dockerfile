# Step 16: the official image has no debugging tools.
FROM nginx:stable
RUN apt-get update && apt-get install -y strace procps && rm -rf /var/lib/apt/lists/*
