# Step 18 – Everyone to HTTPS

## Run

```bash
./scripts/make-certs.sh          # if certs/ doesn't exist yet
docker compose up -d
curl -i localhost:8080/hello
curl -iL --cacert certs/lab.crt localhost:8080/hello
```

## Predict

The redirect and the final page: same protocol version?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

No: the redirect is HTTP/1.1, the page HTTP/2 (only over HTTPS). The status line says
"302 Moved Temporarily", the body "302 Found": same code, renamed in 1999.

</details>

Previous: `git checkout step-17` · Next: `git checkout step-19` · What changed: `git diff step-17 step-18`
