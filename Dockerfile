FROM alpine:3.17
MAINTAINER github.com/manusdextra
RUN apk update; apk upgrade
COPY birthdays /app/

RUN ["rm", "-rf", "/etc/periodic/*"]

WORKDIR /app

# this script creates the crontab
COPY tabulate /app/
RUN ["chmod", "+x", "/app/tabulate"]
RUN ["/app/tabulate"]

# this script takes a name and sends a message about it
COPY congratulate /app/
RUN ["chmod", "+x", "/app/congratulate"]

# this should theoretically keep the container running
CMD ["/usr/sbin/crond", "-f", "-d", "8"]
