# Step 1 – Just run it

## Run

```bash
./run.sh                       # then open http://localhost:8080
docker exec nginx-lab cat /etc/nginx/nginx.conf          # second terminal
docker exec nginx-lab cat /etc/nginx/conf.d/default.conf
```

## Predict

Something decides what the welcome page is. Where would you look for it?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

Two files are the whole rulebook. Look for: `worker_processes auto` (one worker per CPU core),
`worker_connections` (connections per worker), `sendfile on` (disk to network without copying),
`keepalive_timeout 65`, the commented-out `#gzip on` (compression is off by default),
and `include /etc/nginx/conf.d/*.conf` (where your server blocks live).

</details>

Previous: `git checkout step-01` · Next: `git checkout step-02` · What changed: `git diff step-01 step-01`
