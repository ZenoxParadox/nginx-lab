# Step 4 – Something behind NGINX

## Run

```bash
docker compose up
curl localhost:8080/api/test
```

## Predict

Remove `depends_on` and start only NGINX with `docker compose up nginx`. What happens?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

It refuses to start: `host not found in upstream "backend"`. NGINX looks up names at startup
and on every reload; one failed lookup takes the whole server down, even the static page.

From now on everything runs through Compose, so paste this once into your terminal:

```bash
alias nginx-safe-reload='docker compose exec nginx nginx -t && docker compose exec nginx nginx -s reload'
```

</details>

Previous: `git checkout step-03` · Next: `git checkout step-05` · What changed: `git diff step-03 step-04`
