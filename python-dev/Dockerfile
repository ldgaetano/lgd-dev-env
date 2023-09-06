# Use the latest stable Node.js as the base image
FROM python:latest

# Set the working directory within the container
WORKDIR /app

# Copy any files or directories
COPY entrypoint.sh /app/entrypoint.sh

# Install any system packages or utilities you often use
RUN apt-get update
RUN apt-get install -y vim git curl wget pandoc texlive-xetex texlive-fonts-recommended texlive-plain-generic
RUN pip install matplotlib numpy panda scipy jupyterlab notebook nbconvert nbconvert[webpdf]
RUN chmod +x /app/entrypoint.sh

# Expose any ports you may need
EXPOSE 8888

# You may specify an entry script or a shell to start when the container starts
ENTRYPOINT [ "/app/entrypoint.sh" ]