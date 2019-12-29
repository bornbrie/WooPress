#!/bin/bash
echo "Cleaning up before install..."
if [ -d "./WooPress" ]
then
  rm -rf WooPress
fi
yes | docker system prune -a
docker container stop $(docker container ls -aq)
echo "Done with cleanup"
echo "Cloning WooPress to ${PWD}"
git clone https://github.com/bornbrie/WooPress.git
echo "Success"
echo "Entering ${PWD}/WooPress"
cd WooPress || exit 1
echo "Done"
echo "Initializing docker-compose network"
docker-compose build --no-cache
docker-compose up
echo "Done"
echo "Opening WooPress in browser..."
open http://localhost/wp-admin
echo "Done"
