# Step 3 – Your own rules

## Run

```bash
./run.sh
curl -i localhost:8080/hello
# now change the text in conf.d/default.conf and save
```

## Predict

You saved the file. Does the next curl show your new text?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

No: NGINX never picks up changes by itself, on purpose. Test, then reload:

```bash
./scripts/reload.sh      # docker exec nginx-lab nginx -t && ... nginx -s reload
```

Reloads are graceful: old workers finish, new ones start. Remove `default_type` and the browser downloads "hello".

</details>

Previous: `git checkout step-02` · Next: `git checkout step-04` · What changed: `git diff step-02 step-03`
