# Step 14 – One missing slash in alias

## Run

```bash
# Discussion step: nothing to run. Compare these two:
location /files  { alias /usr/share/nginx/html/; }
location /files/ { alias /usr/share/nginx/html/; }
```

## Predict

Both serve every normal file correctly. Is one of them dangerous?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

The first. With mismatched slashes, crafted paths can reach files outside the folder
(path traversal). Prefer `root`; with `alias`, make the endings match. This config only
contains the matching form. Not reproduced in the lab.

</details>

Previous: `git checkout step-13` · Next: `git checkout step-15` · What changed: `git diff step-13 step-14`
