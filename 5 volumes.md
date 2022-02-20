# Volumes CRUD
docker volume ls                        # List
docker volume create <volume_name>      # Create
docker volume rm <volume_name>          # Delete

# Mount a container in a volume
docker run -d --name <container_alias> --mount src=<volume_name>,dst=<container_path> <image_name>
docker run -d --name mongodb --mount src=mongodb,dst=/data/db mongo