build:
   docker build -t allesgute . 

run:
    docker run \
        --rm \
        --init \
        -it \
        --env-file=.env \
        --name allesgute \
        allesgute:latest

restart: build run
