# Step 8 – Compression is off, and half-on

## Run

```bash
docker compose up -d
curl -s -o /dev/null -D - -H 'Accept-Encoding: gzip' localhost:8080/api/test
curl -s -H 'Accept-Encoding: gzip' localhost:8080/api/test | xxd
curl -s localhost:8080/api/test | wc -c
curl -s -H 'Accept-Encoding: gzip' localhost:8080/api/test | wc -c
```

## Predict

`gzip on` is set. Is everything compressed now?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

Only because this config also lists `gzip_types`: `gzip on` alone only compresses HTML.
Every gzip stream starts with the bytes `1f 8b`; find them in the `xxd` output.

</details>

Previous: `git checkout step-07` · Next: `git checkout step-09` · What changed: `git diff step-07 step-08`
