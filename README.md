# NGINX workshop lab

Every stage of the day lives on its own branch: `step-01` up to `step-26`.
Each branch is complete on its own, so you can jump in anywhere.

## Prerequisites

- Docker (Docker Desktop, OrbStack or Colima)
- `curl`, `openssl`, `nc` (all present on macOS)
- Pull the images beforehand: `docker pull nginx:stable traefik/whoami redis:7`

## Using the branches

```bash
git checkout step-07          # jump to a stage
cat STEP.md                   # run, predict, then open the reveal
git diff step-06 step-07      # exactly what changed in this step
```

Before switching branches, stop the lab: `docker compose down` (steps 1-3: Ctrl+C).

## Test and reload, in one word

From step 4 on, paste this once into your terminal, inside the repo:

```bash
alias nginx-safe-reload='docker compose exec nginx nginx -t && docker compose exec nginx nginx -s reload'
```

Then type `nginx-safe-reload` (or `ngi` + Tab). It tests the config and only reloads if the test passed.
The alias lives as long as that terminal: a new tab needs it again. `./scripts/reload.sh` does the same.

## Steps

| Branch | Topic |
| --- | --- |
| `step-01` | Just run it |
| `step-02` | Your own content |
| `step-03` | Your own rules |
| `step-04` | Something behind NGINX |
| `step-05` | When the backend goes away |
| `step-06` | Who is really asking? |
| `step-07` | More than one backend |
| `step-08` | Compression is off, and half-on |
| `step-09` | A header for the whole server |
| `step-10` | One slash |
| `step-11` | Who gets the strangers? |
| `step-12` | Which location wins? |
| `step-13` | Slow down, or go away? |
| `step-14` | One missing slash in alias |
| `step-15` | Two users, one cache |
| `step-16` | Watch the waiter |
| `step-17` | HTTPS |
| `step-18` | Everyone to HTTPS |
| `step-19` | When one backend dies |
| `step-20` | Killing every backend |
| `step-21` | Fixing a cached mistake |
| `step-22` | The bouncer (API gateway) |
| `step-23` | Everyone gets their own budget |
| `step-24` | Uploading a big file |
| `step-25` | Who was slow? |
| `step-26` | NGINX in front of a database (stream) |

Steps 1-3 use plain `docker run` (`./run.sh`); from step 4 on, Docker Compose.
From step 18 on, the site is HTTPS-only: use `https://localhost:8443` with `--cacert certs/lab.crt`.

## Not in Git, on purpose

`certs/` (run `./scripts/make-certs.sh`) and the 2 MB test file (`./scripts/make-bigfile.sh`).
