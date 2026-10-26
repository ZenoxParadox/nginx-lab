# Step 19 – When one backend dies

## Run

```bash
docker compose up -d --scale backend=3
nginx-safe-reload
./scripts/failover-loop.sh
docker stop nginx-lab-backend-2
./scripts/failover-loop.sh
```

## Predict

One backend is dead. How many errors do the nine requests get?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

None. One request waits the 2-second connect timeout (default 60 s) and is retried on the next
backend; `X-Upstream` shows both addresses. The dead one is benched for 10 seconds.
Follow-up: uncomment `proxy_read_timeout 1s` and compare a slow GET and POST with `?wait=3s`.

</details>

Previous: `git checkout step-18` · Next: `git checkout step-20` · What changed: `git diff step-18 step-19`
