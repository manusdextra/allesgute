FROM alpine:3.17
RUN apk update; apk upgrade
COPY birthdays /app/
COPY tabulate /app/
RUN ["chmod", "+x", "/app/tabulate"]
WORKDIR /app
RUN ["/app/tabulate"]
