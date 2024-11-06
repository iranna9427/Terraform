# Dockerfile
FROM ubuntu:latest
LABEL maintainer="yourname@example.com"
RUN apt-get update && apt-get install -y curl
CMD ["echo", "Hello from the custom Docker image!"]

