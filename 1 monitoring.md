# Basic
docker --version
docker info
docker stats

# Check containers
docker ps                   # Containers running
docker ps -l                # Latest: Show ps of the last process
docker ps -a                # Containers running and containers off
docker ps -aq               # Show the IDs of all the containers (on & off)
docker inspect <container_name | container_ID>