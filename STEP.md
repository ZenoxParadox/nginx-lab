# Step 9 – A header for the whole server

## Run

```bash
docker compose up -d
curl -s -o /dev/null -D - localhost:8080/
curl -s -o /dev/null -D - localhost:8080/api/test
```

## Predict

`X-Lab` is set for the whole server. Which responses carry it?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

Only `/`. A location with its own `add_header` (here `X-Worker`) inherits none from above.
Same rule for `proxy_set_header`. Fix: put shared headers in a snippet and include it everywhere.

</details>

Previous: `git checkout step-08` · Next: `git checkout step-10` · What changed: `git diff step-08 step-09`
