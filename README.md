# Redis Cluster in Docker on osx

Using port from 7000 ~ 7005

### start the redis cluster

```bash
bash start.sh
```

### connect to cluster

```
redis-cli -c -p 7000
```

### to stop the cluster
```
docker-compose down
```

### to install redis-cli 
```
brew install redis-cli
```

### example output in cli

```
○ → redis-cli -c -p 7000 -a myredis
127.0.0.1:7000> set foo bar
-> Redirected to slot [12182] located at 127.0.0.1:7002
OK
127.0.0.1:7002> set hello world
-> Redirected to slot [866] located at 127.0.0.1:7000
OK
127.0.0.1:7000> get foo
-> Redirected to slot [12182] located at 127.0.0.1:7002
"bar"
127.0.0.1:7002> get hello
-> Redirected to slot [866] located at 127.0.0.1:7000
"world"
```

