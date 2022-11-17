FROM traffmonetizer/cli:latest
CMD ls
ENTRYPOINT ["./Cli", "start", "accept", "--token", "DCADuzwLFCJV2mEtvpSUOQMfbnMpVIOMfGLu9iGFy5w="]
