#!/usr/bin/env bash

echo "Cleaning up before install..."
yes | docker system prune -a
docker stop $(docker ps -q)
docker rm $(docker ps -q)
echo "Done with cleanup"