# This file is used to containerize our application
# It specifies which files to copy into the container, which 
# packages to install, and which command to run for the application.

# Ruild using: docker build -t <image-name> .
# Run using: docker run -p 8080:8080 <image-name>

# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory to /app
WORKDIR /app

# Copy dependencies into the container at /app
COPY pyproject.toml /app

# Install depencies only, avoids re-installing all dependencies when the code changes
RUN pip install .

# Now copy the code into the container at /app
COPY /src /app/src

# Install our project only when the code changes, to speed up the build
RUN pip install .

# Run app with streamlit
CMD ["streamlit", "run", "<path-to-application>", "--server.port", "8080"]
