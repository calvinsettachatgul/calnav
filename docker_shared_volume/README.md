# shared volume in docker container

# https://docs.docker.com/engine/reference/builder/#volume

# build image and run the container
docker build . -t new_image
docker run -it -v $(pwd):/myvol new_image



