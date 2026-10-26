# Step 13 – Slow down, or go away?

## Run

```bash
docker compose up -d
./scripts/ratelimit-seq.sh       # one after another
./scripts/ratelimit-par.sh       # all at once
```

## Predict

One request per second, `burst=5`. How many of ten simultaneous requests pass?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

1 immediately, 5 after 1 to 5 seconds, 4 rejected: `burst` is a waiting line, not an allowance.
Sequential requests never overflow it. With `burst=5 nodelay`: 6 immediately, 4 rejected.
The default rejection is 503; this config sets 429.

</details>

Previous: `git checkout step-12` · Next: `git checkout step-14` · What changed: `git diff step-12 step-13`
