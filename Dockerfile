FROM alpine/git:latest
WORKDIR /app
COPY entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]
