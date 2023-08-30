# Use the latest stable Node.js as the base image
FROM node:latest

# Set the working directory within the container
WORKDIR /~

# Install any system packages or utilities you often use
RUN apt-get update
RUN apt-get install -y vim git curl wget
RUN corepack enable
RUN yarn set version stable

# Expose any ports you may need
# e.g., EXPOSE 3000

# Mount point for your development directory
VOLUME [ "/~/development" ]

# You may specify an entry script or a shell to start when the container starts
CMD [ "bash" ]
