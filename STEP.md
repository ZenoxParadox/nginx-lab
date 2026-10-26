# Step 10 – One slash

## Run

```bash
docker compose up -d
curl -si localhost:8080/api/test     # look at whoami's GET line
```

## Predict

Try the `proxy_pass` variants from the comments. What path does the backend receive for each?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

| location | proxy_pass | backend receives |
| --- | --- | --- |
| `/api/` | `http://backend` | `/api/users/42` |
| `/api/` | `http://backend/` | `/users/42` |
| `/api` | `http://backend/` | `//test`, then a redirect and a 404 |

Anything after the host replaces the matched prefix.

</details>

Previous: `git checkout step-09` · Next: `git checkout step-11` · What changed: `git diff step-09 step-10`
