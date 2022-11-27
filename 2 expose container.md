# Links the port of the Host to the port of the container
-p <host_port>:<container_port>

docker run -d --name <container_name> image_name
docker run --name <container_name> -p <host_port>:<container_port> image_name
docker run --name <container_name> -d -p <host_port>:<container_port> image_name

# Check the logs of a container running in the background
docker logs <container_name>
docker logs -f <container_name>             # Follow the logs of the container
docker logs --tail 10 -f <container_name>   # Follow the last <n> logs of the container