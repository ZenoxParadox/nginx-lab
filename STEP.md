# Step 17 – HTTPS

## Run

```bash
./scripts/make-certs.sh
docker compose up -d
curl -si https://localhost:8443/hello; echo "exit: $?"
curl -ki https://localhost:8443/hello
curl -i --cacert certs/lab.crt https://localhost:8443/hello
```

## Predict

What does the first curl print?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

Nothing: `-s` hides errors too, and the exit code is 60 (untrusted certificate). `-k` skips the
check entirely; `--cacert` trusts exactly this certificate. Over HTTP/2, header names are lowercase.

</details>

Previous: `git checkout step-16` · Next: `git checkout step-18` · What changed: `git diff step-16 step-17`
