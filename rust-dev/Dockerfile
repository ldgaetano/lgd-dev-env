# Use the latest stable Node.js as the base image
FROM rust:latest

# Set the working directory within the container
WORKDIR /app

# Install any system packages or utilities you often use
RUN apt-get update
RUN apt-get install -y vim git curl wget

# Expose any ports you may need
# EXPOSE

# You may specify an entry script or a shell to start when the container starts
CMD [ "bash" ]
