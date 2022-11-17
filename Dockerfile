FROM alpine:3.17
COPY --chmod=777 /tm.sh /app/tm.sh
CMD ["/bin/sh"]
WORKDIR /app
ENTRYPOINT ["./tm.sh"]
