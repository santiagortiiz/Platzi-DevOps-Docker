# Run mongo image and execute mongo shell inside the container
docker run -d --name mongodb mongo
docker exec -it mongodb bash                # execute the bash in the container
mongo                                       # execute mongo shell

# Bind Mount: -v
docker run -v <host-path>:<container-path>
docker run -d --name <container_alias> -v <host_path>:<container_path> <image>
docker run -d --name mongodb -v "$(pwd)"/data_persistence:/data/db mongo