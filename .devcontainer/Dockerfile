FROM mcr.microsoft.com/devcontainers/python:3.12

# Install additional OS packages if needed (unzip, etc)
RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*

# Download the Google Cloud SDK
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-linux-x86_64.tar.gz

# Extract the Google Cloud SDK
RUN tar -xf google-cloud-cli-linux-x86_64.tar.gz && rm google-cloud-cli-linux-x86_64.tar.gz

# Run the install script
RUN ./google-cloud-sdk/install.sh --quiet

# Add gcloud to the PATH
ENV PATH="/google-cloud-sdk/bin:${PATH}"

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*



