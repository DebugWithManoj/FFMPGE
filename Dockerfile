FROM n8nio/n8n

# Switch to root to install packages
USER root

# Install ffmpeg and other tools
RUN apt-get update && \
    apt-get install -y ffmpeg curl git && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to node user (required for n8n)
USER node
