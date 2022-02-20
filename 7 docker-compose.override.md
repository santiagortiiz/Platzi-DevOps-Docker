file name must be
docker-compose.override.yml

version "3.8"

services:
    app:
        build: .
        environment:
            <ENV_VAR>: <ENV_VAR_VALUE>

# Best practices
- define ports in docker-compose.yml and not here. Or at least in one of them
- Add to the gitignore if desired