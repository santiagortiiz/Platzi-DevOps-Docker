# List
docker network ls
    host: is a representation of the real host of the machine
    none: disable the network for a container

# Create network
docker network create --attachable <network_name>
docker network inspect <network_name>

# Connect a container to a network
docker network connect <network_name> <image_name>
docker run -d --name <container_alias> -p 3000:3000 --env ENV_VAR=ENV_VAR_VALUE <image_name>

ENV_VAR_VALUE= mongodb://<host>:27017/test      # the host could be the container name
