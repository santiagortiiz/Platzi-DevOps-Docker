# Images CRUD
docker images ls
docker image rm <image_name>

# Download images
docker pull <image>:<version>     # Use docker hub repository by default

# Check the history of an image
docker history <image>

# Build an image
docker build -t <tag>:<version> <build_context_path>   # A Dockerfile should exists in the build context path
docker build -t <tag>:<version> -f <dockerfile_path> <build_context_path>
docker build -t prodapp -f build/production.Dockerfile .

# Upload images
docker tag <image>:<version> <docker_hub_user | repository>/<software_name>:<version>
docker login
docker push