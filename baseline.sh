#!/usr/bin/env bash

# Remove the container previous

docker rm baseline -f

# Run the cypress docker image
docker-compose run --name='baseline' cypress ./node_modules/.bin/cypress run \
--config baseUrl=http://127.0.0.1 --env updateSnapshots=true

# Copy the baseline snapshots files to local
docker cp baseline:/usr/src/app/cypress/snapshots cypress
