FROM traffmonetizer/cli:latest
ADD file:5d673d25da3a14ce1f6cf66e4c7fd4f4b85a3759a9d93efb3fd9ff852b5b56e4 in /
CMD ["/bin/sh"]
RUN /bin/sh -c apk add --no-cache         ca-certificates                 krb5-libs         libgcc         libintl         libssl1.1         libstdc++         zlib
ENV ASPNETCORE_URLS=http://+:80 DOTNET_RUNNING_IN_CONTAINER=true DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=true
RUN ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
RUN WORKDIR /app
RUN WORKDIR /app
RUN COPY /app/publish . # buildkit
RUN RUN /bin/sh -c rm *.pdb # buildkit
RUN ENTRYPOINT ["./Cli"]
