# Step 6 – Who is really asking?

## Run

```bash
docker compose up -d
curl localhost:8080/api/test
curl -H "X-Forwarded-For: 1.2.3.4" localhost:8080/api/test
```

## Predict

We send a made-up X-Forwarded-For. What does the backend receive?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

`X-Forwarded-For: 1.2.3.4, 192.168.65.1`: the fake value stays at the front, and it can be any text.
Only entries added by your own proxies are trustworthy: read from the right. `X-Real-IP` comes
from the connection and is safe. Note `$host` drops the port; `$http_host` keeps it.

</details>

Previous: `git checkout step-05` · Next: `git checkout step-07` · What changed: `git diff step-05 step-06`
