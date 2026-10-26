# Step 12 – Which location wins?

## Run

```bash
docker compose up -d
./scripts/match-loop.sh
```

## Predict

Write down A to E for each of the six requests before running the loop.

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

Exact `=` wins immediately. Otherwise the longest prefix; if it has `^~`, it wins.
Otherwise the regexes, in file order. No regex matched? The longest prefix.
That's why `/match/images/cat.png` goes to C and `/match/exact/` to A.

</details>

Previous: `git checkout step-11` · Next: `git checkout step-13` · What changed: `git diff step-11 step-12`
