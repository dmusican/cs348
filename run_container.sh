#!/bin/bash

REPO_DIR=$(pwd)
CONTAINER_NAME=cs348-container
COURSE_DIR=/cs348


# Build the container if it does not already exist
CONTAINER_LOOKUP=$(docker images $CONTAINER_NAME --format "{{.Repository}}")
# if [[ $CONTAINER_LOOKUP != $CONTAINER_NAME ]]; then
        cd config
        docker build -f Dockerfile -t $CONTAINER_NAME .
        cd "$REPO_DIR"
# fi

# Mount with type=bind to allow changes made
# inside the container to be visible on the host;
# also cd into PL_DIR once the container is running

docker run \
        -it \
        --shm-size=2gb \
        --mount src="$REPO_DIR/code",target=$COURSE_DIR,type=bind \
        --workdir $COURSE_DIR \
        $CONTAINER_NAME \
        zsh
