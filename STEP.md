# Step 22 – The bouncer (API gateway)

## Run

```bash
docker compose up -d
curl -si --cacert certs/lab.crt https://localhost:8443/secure/data
curl -si -H "Authorization: Bearer wrong" --cacert certs/lab.crt https://localhost:8443/secure/data
curl -si -H "Authorization: Bearer token-alice" --cacert certs/lab.crt https://localhost:8443/secure/data
curl -si --cacert certs/lab.crt https://localhost:8443/_auth
```

## Predict

No token, a wrong token, Alice's token, and `/_auth` itself: which status codes?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

401, 401, 200 and 404 (`internal` locations don't exist for visitors). In production, a real
auth service answers:

```nginx
location = /_auth {
    internal;
    proxy_pass http://auth-service/verify;
    proxy_pass_request_body off;
    proxy_set_header Content-Length "";
    proxy_set_header X-Original-URI $request_uri;
}
```

</details>

Previous: `git checkout step-21` · Next: `git checkout step-23` · What changed: `git diff step-21 step-22`
