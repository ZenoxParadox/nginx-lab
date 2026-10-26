# Step 16 – Watch the waiter

## Run

```bash
docker compose up -d --build
docker compose exec nginx sh -c 'strace -p "$(pgrep -d, -f "nginx: worker")" -e trace=epoll_pwait,epoll_wait,accept4,recvfrom,writev,sendfile,close'
curl localhost:8080/hello                                         # second terminal
curl localhost:8080/                                              # a file
curl -s -o /dev/null -H 'Accept-Encoding: gzip' localhost:8080/   # a compressed file
```

## Predict

How many system calls does it take to serve one request?

Write your answer down before you open the reveal.

<details>
<summary><b>Reveal</b></summary>

About eight: wake up, `accept4`, read the request, `writev` the answer, wait 65 s for more
(keep-alive), see the client hang up, `close`, back to waiting. A file adds `sendfile`; with gzip,
`sendfile` disappears because compressing needs the bytes in memory.

</details>

Previous: `git checkout step-15` · Next: `git checkout step-17` · What changed: `git diff step-15 step-16`
