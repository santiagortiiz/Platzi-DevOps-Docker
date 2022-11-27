# Create and execute a container
docker run
docker run --name <container_name> container_name       # Run a container with an alias
docker run --rm                                         # Remove the container after stop
docker rename <old_name> <new_name>

# Run a container
docker run --memory 4m <image>                  # Minimum RAM needed for docker = 4MB
docker run --memory 1g <image>
docker run --memory="100m" --cpus=0.5 <image>
docker run --it <image>                         # Run in the interactive mode
exit                                            # Exit interactive mode

## Specify the command that you want the container to run and detach the container to run in the background
docker run --name <container_name> [--detach | -d ] <image_name> tail -f <command_to_overwrite>
## Execute a sub process in an existing container
docker exec -it  <container_name> <sub-process_to_execute>
docker exect <container_name> ps -ef            # Show processes in a container
ps -aux                                         # Check what is happenning inside a container

# Remove/Stop a container
docker stop <container_name>                    # Stop a container
docker rm <container_name | container_ID>       # Remove a container that is not running
docker rm -f <container_name | container_ID>    # Remove a container that is running
docker container prune                          # Remove all stopped containers
docker rm -f $(docker ps -aq)                   # Remove all containers (on & off)
docker kill <container_name>

## Delete the main process inside a container
docker inspect --format '{{.State.Pid}}' <container_name>
kill -9 <process_ID> | docker stop <process_ID | process_name>

# Copy files from host to a container
docker cp <local_target_path> <container>:<destiny>
docker cp .gitignore mongodb:/home/docker/

# Copy files from a container to the host (useful for builds validation)
docker cp <container>:<target_path> <local_destiny>
docker cp mongodb:/home/docker from_mongo_container