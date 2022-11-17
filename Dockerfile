FROM ubuntu:18.04
RUN tm.sh
ENTRYPOINT ["echo", "test"]
