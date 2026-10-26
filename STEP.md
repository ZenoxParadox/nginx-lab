# Step 24 – Uploading a big file

## Run

```bash
# first comment out client_max_body_size in conf.d/default.conf, then:
docker compose up -d
./scripts/make-bigfile.sh
curl -s -o /dev/null --cacert certs/lab.crt -X POST --data-binary @big.bin -w "%{http_code}\n" https://localhost:8443/api/test
```

## Predict

Nothing about uploads is configured. What happens to a 2 MB upload?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

413: the default limit is 1 MB, enforced before the backend sees anything. Raise it per
location (this step's config uses 10m). Spring's multipart limit is 1 MB too.

</details>

Previous: `git checkout step-23` · Next: `git checkout step-25` · What changed: `git diff step-23 step-24`
