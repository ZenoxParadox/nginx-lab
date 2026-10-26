# Step 26 – NGINX in front of a database (stream)

## Run

```bash
docker compose up -d
docker compose ps                                  # 6380->6380 must be listed
(printf 'PING\r\n'; sleep 1) | nc localhost 6380
(printf 'SET greeting hello\r\nGET greeting\r\n'; sleep 1) | nc localhost 6380
```

## Predict

Does NGINX need to understand Redis to do this?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

No: `stream` passes bytes untouched (layer 4). `+PONG` and `$5` are Redis's own protocol.
`stream` lives in `nginx.conf`, not `conf.d`, which is included inside `http`.

</details>

Previous: `git checkout step-25` · Next: `git checkout step-26` · What changed: `git diff step-25 step-26`
