# Use the latest stable Node.js as the base image
FROM node:18

# Set the working directory within the container
WORKDIR /app

# Install any system packages or utilities you often use
RUN apt-get update
RUN apt-get install -y vim git curl wget
RUN corepack enable
RUN yarn set version stable

# Expose any ports you may need
EXPOSE 7000 7001 8000

# You may specify an entry script or a shell to start when the container starts
CMD [ "npx", "medusa", "develop" ]
