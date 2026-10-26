# Step 5 – When the backend goes away

## Run

```bash
docker compose up -d
docker compose logs -f nginx       # second terminal
docker compose stop backend
curl -i localhost:8080/api/test
curl -i localhost:8080/api/test    # and again
docker compose start backend
curl -i localhost:8080/api/test    # right during the restart
```

## Predict

Same dead backend, several requests. Do you get the same error each time?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

No. Three different errors for one dead backend:

| Error | What happened | Status |
| --- | --- | --- |
| 110 Connection timed out | Nobody at that address, silence | 504 (after 60 s) |
| 113 No route to host | The network says nobody's there | 502, fast |
| 111 Connection refused | Machine back, app not listening yet | 502, instant |

A dead backend can look like a slow one.

</details>

Previous: `git checkout step-04` · Next: `git checkout step-06` · What changed: `git diff step-04 step-05`
