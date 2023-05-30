uncomment:
    # This line adds a test email sent every minute to the crontab
    sed -i 's/\(# \)*printf \"/printf \"/' ./tabulate

comment:
    sed -i 's/printf \"/# printf \"/' ./tabulate

build:
    docker build -t allesgute . 

run:
    docker run \
        --rm \
        --init \
        -it \
        --env-file ./.env \
        --name allesgute \
        allesgute:latest

restart: build run

test: uncomment restart

reset: comment restart
