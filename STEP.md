# Step 15 – Two users, one cache

## Run

```bash
docker compose up -d
curl -si -H "X-User: alice" localhost:8080/cached/profile
curl -si -H "X-User: bob"   localhost:8080/cached/profile
```

## Predict

Bob asks for his profile right after Alice. What does he get?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

A HIT with Alice's request in the body: the cache key is the URL only. Uncomment the fix in
`/cached/`, reload, and repeat: `BYPASS`. `proxy_cache_bypass` = don't read, `proxy_no_cache` =
don't write; you need both.

</details>

Previous: `git checkout step-14` · Next: `git checkout step-16` · What changed: `git diff step-14 step-15`
