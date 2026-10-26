# Step 23 – Everyone gets their own budget

## Run

```bash
docker compose up -d
./scripts/users-loop.sh
```

## Predict

Alice floods the API. Does Bob notice?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

No: 3 × 200 and 2 × 429 each, separate budgets. Catch: rate limiting runs before `auth_request`,
keyed on the raw header, so every made-up token gets a fresh budget. Uncomment the per-IP guard.

</details>

Previous: `git checkout step-22` · Next: `git checkout step-24` · What changed: `git diff step-22 step-23`
