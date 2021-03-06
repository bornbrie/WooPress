#!/bin/bash
sh ./clean-up-docker.sh
echo "Cloning WooPress to ${PWD}"
git clone https://github.com/bornbrie/WooPress.git
echo "Success"
echo "Entering ${PWD}/WooPress"
cd WooPress || exit 1
echo "Done"
echo "Initializing docker-compose network"
docker-compose build --no-cache
docker-compose up
