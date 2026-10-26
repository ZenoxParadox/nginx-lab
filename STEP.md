# Step 21 – Fixing a cached mistake

## Run

```bash
docker compose up -d
curl -si --cacert certs/lab.crt https://localhost:8443/cached/calendar                                  # MISS, then HIT
curl -si -H "X-Refresh: 1" --cacert certs/lab.crt https://localhost:8443/cached/calendar               # wrong value
curl -si -H "X-Refresh: my-secret-token" --cacert certs/lab.crt https://localhost:8443/cached/calendar
curl -si --cacert certs/lab.crt https://localhost:8443/cached/calendar
```

## Predict

The refresh request skips the cache. Does the next normal visitor see the new version?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

Yes: the refresh skips reading but still writes. The token is in the config for the lab only;
better: an untracked include, an environment template, or no secret at all (internal port or IP).

</details>

Previous: `git checkout step-20` · Next: `git checkout step-22` · What changed: `git diff step-20 step-21`
