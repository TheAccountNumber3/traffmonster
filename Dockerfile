FROM ubuntu:18.04
ADD /app/ /
CMD ["/bin/sh"]
RUN apk add --no-cache ca-certificates krb5-libs libgcc libintl libssl1.1 libstdc++ zlib
ENV ASPNETCORE_URLS=http://+:80 DOTNET_RUNNING_IN_CONTAINER=true DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=true
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
WORKDIR /app
WORKDIR /app
RUN /bin/sh -c rm *.pdb # buildkit
ENTRYPOINT ["./Cli"]
