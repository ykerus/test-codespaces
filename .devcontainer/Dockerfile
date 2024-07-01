FROM mcr.microsoft.com/devcontainers/python:3.12

# Install additional dependencies for the gcloud CLI
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Download and install the Google Cloud CLI
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-linux-x86_64.tar.gz \
    && tar -xf google-cloud-cli-linux-x86_64.tar.gz \
    && ./google-cloud-sdk/install.sh --quiet \
    && rm google-cloud-cli-linux-x86_64.tar.gz

# Add the gcloud CLI to the PATH
ENV PATH $PATH:/google-cloud-sdk/bin
