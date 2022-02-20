# Example 1
FROM <image_name>:version

RUN touch hello-world.txt       # Run in building time


# Example 2
FROM node:12

### Copy files in . direcory to the path inside the container
COPY ["<path_folter>", "<container_path_destiny>"]

WORKDIR /usr/src                # Workdir inside the container = cd /usr/scr

RUN npm install                 # Install project dependencies

EXPOSE 3000                     # Allow this port to be accessed by the host machine

CMD ["npx", "nodemon", "index.js"]  # Default command to be executed when the image is called


# Example 3. Build with:
## docker run --rm -p 3000:3000 -v "$(pwd)"/docker app/index.js:/usr/src/index.js <image_name>

FROM node:14

COPY ["package.json", "package-lock.json", "/usr/src"]

WORKDIR /usr/src

RUN npm install

COPY [".", "/usr/src"]

EXPOSE 3000

CMD ["npx", "nodemon", "index.js"]



# Executable containers

# Exec form vs Shell form
CMD /loop.sh            # Shell form (anything like this, run as a child of a shell)
CMD ["/loop.sh"]        # Exec form



# Entry point
FROM ubuntu:trusty
ENTRYPOINT              # Default command to execute in the container
CMD                     # Taking the CMD as parameter

## Example
FROM ubuntu:trusty
ENTRYPOINT ["/bing/ping", "c", "3"]
CMD ["localhost"]