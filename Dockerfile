FROM n8nio/n8n:latest

USER root

# Use apk (Alpine package manager)
RUN apk update && \
    apk add --no-cache ffmpeg curl git

USER node
