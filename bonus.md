# Run linux server
docker run ubuntu
docker run -it ubuntu
docker run -it ubuntu bash
cat /etc/lsb-release                    # Show Ubuntu specifications
# Note:
If you are in windows and run a command with the -it param, use the prefix "winpty":
winpty docker run -it ubuntu bash

# Run linux server and keep alive
docker run --name <container_name> [--detach | -d ] <image_name> tail -f <command_to_overwrite>
docker run --name ubuntu_server -d ubuntu tail -f /dev/null
docker exec -it ubuntu_server bash

# Linux commands
hostname            # name of the machine network

