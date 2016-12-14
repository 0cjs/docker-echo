FROM alpine:latest
RUN apk --no-cache add socat
EXPOSE 3660
ENTRYPOINT [ "socat", "TCP4-LISTEN:3660,fork", "PIPE" ]
