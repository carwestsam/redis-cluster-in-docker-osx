#!/bin/bash

docker-compose up -d

docker exec redis-cluster-entry /bin/sh -c "echo yes > in.txt && /usr/src/redis/src/redis-trib.rb create --replicas 1 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 < in.txt"

echo "Redis cluster started, try: \"redis-cli -c -p 7000\""
