FROM alpine:3.17
ADD tm.sh /app/tm.sh
CMD ["/bin/sh"]
WORKDIR /app
ENTRYPOINT ["./tm.sh"]
