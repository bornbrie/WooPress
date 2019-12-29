#!/bin/bash

echo "Cloning WooPress to ${PWD}"
git clone https://github.com/bornbrie/WooPress.git
echo "Success"
echo "Entering ${PWD}/WooPress"
cd WooPress || exit 1
echo "Done"
echo "Initializing docker-compose network"
docker-compose up -d
echo "Done"
echo "Opening WooPress in browser..."
open http://localhost/
echo "Done"