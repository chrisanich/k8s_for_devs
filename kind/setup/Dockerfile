FROM kindest/node:v1.33.1

# Install tools including Docker (non-interactive)
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        vim \
        nano \
        docker.io \
        podman \
        sudo \
        -o Dpkg::Options::="--force-confdef" \
        -o Dpkg::Options::="--force-confold" && \
    rm -rf /var/lib/apt/lists/*

# Create the non-root user 'anich' and set up sudo access
RUN useradd -m -s /bin/bash anich && \
    echo "anich ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Add anich to the docker group to run Docker commands without sudo
RUN usermod -aG docker anich
