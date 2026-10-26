# Step 25 – Who was slow?

## Run

```bash
docker compose up -d
./scripts/make-bigfile.sh
docker compose logs -f nginx                      # second terminal
curl -s -o /dev/null --cacert certs/lab.crt "https://localhost:8443/api/test?wait=500ms"
curl -s -o /dev/null --limit-rate 200k --cacert certs/lab.crt https://localhost:8443/big.bin
```

## Predict

The 2 MB download takes curl about 10 seconds. What does NGINX log as total time?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

Close to 0: Docker Desktop's port forwarding took the whole file instantly and trickled it to
curl itself. NGINX measures what's in front of it, not what users experience.

</details>

Previous: `git checkout step-24` · Next: `git checkout step-26` · What changed: `git diff step-24 step-25`
