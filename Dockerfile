FROM alpine:3.17
COPY --chmod=777 /tm.sh /tm.sh
CMD ["/bin/sh"]
WORKDIR /
ENTRYPOINT ["./tm.sh"]
