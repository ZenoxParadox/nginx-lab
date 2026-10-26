# Step 11 – Who gets the strangers?

## Run

```bash
docker compose up -d
curl -si localhost:8080/
curl -si -H "Host: shop.local" localhost:8080/
curl -si -H "Host: totally-random.example" localhost:8080/
```

## Predict

Nobody configured `totally-random.example`. What does it get? Then: remove `default_server`, rename `shop.conf` to `a-shop.conf`, reload and repeat.

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

It gets your site: no match means the default server, the first block read unless one says
`default_server`. Files load alphabetically, so the rename moves every stranger (and `localhost`)
to the shop. Fix: an explicit catch-all with `server_name _;` and `return 444;`.

</details>

Previous: `git checkout step-10` · Next: `git checkout step-12` · What changed: `git diff step-10 step-11`
