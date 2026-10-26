# Step 7 – More than one backend

## Run

```bash
docker compose up -d --scale backend=3
nginx-safe-reload                 # names are looked up at reload!
docker compose exec nginx nproc   # how many workers?
./scripts/lb-loop.sh
```

## Predict

Right after the reload: will the requests spread nicely over three backends?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

Often not: each worker keeps its own turn counter, and every fresh worker starts at the same
backend. Round-robin is only even on average. In the browser it rotates nicely, because one
kept-alive connection stays with one worker. A shared `zone` fixes it (step 19).

</details>

Previous: `git checkout step-06` · Next: `git checkout step-08` · What changed: `git diff step-06 step-07`
