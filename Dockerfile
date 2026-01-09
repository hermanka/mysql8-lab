# Use a Debian-based MySQL image
FROM mysql:8.0-debian

# Set environment variable to run apt-get commands without interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Run apt-get update and install additional packages
# It is a best practice to combine update and install into a single RUN instruction
# to ensure all packages are installed with the latest information and to reduce image size.
RUN apt-get update && apt-get install -y \
    tcpdump nano\
    && rm -rf /var/lib/apt/lists/*
