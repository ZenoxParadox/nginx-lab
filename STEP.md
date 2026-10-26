# Step 20 – Killing every backend

## Run

```bash
docker compose up -d
curl -si --cacert certs/lab.crt https://localhost:8443/cached/party        # MISS: fill the cache
docker compose stop backend
sleep 10                             # let the copy expire
curl -si --cacert certs/lab.crt https://localhost:8443/cached/party
curl -si --cacert certs/lab.crt https://localhost:8443/api/test
```

## Predict

Every backend is dead and the copy has expired. What does the page do?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

It still loads: `200` with `x-cache-status: STALE`, while `/api/test` gives a 504.
Restore with `docker compose up -d --scale backend=3 && nginx-safe-reload`.

</details>

Previous: `git checkout step-19` · Next: `git checkout step-21` · What changed: `git diff step-19 step-20`
