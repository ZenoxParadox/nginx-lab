# Step 2 – Your own content

## Run

```bash
./run.sh
curl -i localhost:8080/test.txt
curl -i localhost:8080/test.weird
```

## Predict

Both files contain exactly the same text. Will the browser treat them the same?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

No. `test.txt` comes back as `Content-Type: text/plain` and is shown; `test.weird` as
`application/octet-stream` and is downloaded. NGINX looks up the extension in `mime.types`;
anything unknown becomes `application/octet-stream`.

</details>

Previous: `git checkout step-01` · Next: `git checkout step-03` · What changed: `git diff step-01 step-02`
