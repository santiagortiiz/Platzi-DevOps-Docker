version: "3.8"

services:
  app:
    image: platziapp
    environment:
      MONGO_URL: "mongodb://db:27017/test"
    depends_on:
      - db
    ports:
      - "3000:3000"
    volumes:
      - .:/usr/src
      - /usr/src/node_modules
    command: npx nodemon index.js

  db:
    image: mongo

# Execute compose file
docker-compose up
docker-compose up -d

docker-compose ps

# logs
docker-compose logs <service_name>
docker-compose logs -f <service_name>, <service_name_n>

# Command execution inside a service
docker-compose exec <service_name> <command>
docker-compose exec app bash

# Drop environment
docker-compose down


# Build a docker compose with files in the hard disk instead of an image
replace:
  image: platziapp
by:
  build .

## Specify a build
docker-compose build | docker-compose build <service_name>
docker compose up -d

# Additional Features:
## Allows to mount files I want to use and av:3000"oid packages/dependencies
volumes:
  - .:/usr/src
  - /usr/src/node_modules         # If it does not have ":", then the path is ignored

## Overwrite the command of the service
command: nodemon index.js

If nodemon is not in the dependencies, it is needed to specify the path to nodemon, or run NPX to solve that
command: npx nodemon index.js

# Scale
docker-compose up -d --scale <service_name>=<number_of_containers>

should define a range of ports instead of just one
ports:
  - "3000-3001:3000"