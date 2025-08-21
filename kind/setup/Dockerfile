FROM kindest/node:v1.33.1

# Install tools (non-interactive)
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

# Create the non-root user 'anich' with sudo and docker access, and set default shell to sh
RUN useradd -m -s /bin/sh anich && \
    echo "anich ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    usermod -aG docker anich

# Create .kube directories for both root and anich
RUN mkdir -p /root/.kube /home/anich/.kube

# Add commands to anich's .profile to set up kubeconfig
RUN echo 'if [ -f /etc/kubernetes/admin.conf ]; then' > /home/anich/.profile && \
    echo '    cp /etc/kubernetes/admin.conf $HOME/.kube/config 2>/dev/null || true' >> /home/anich/.profile && \
    echo '    chmod 600 $HOME/.kube/config 2>/dev/null || true' >> /home/anich/.profile && \
    echo 'fi' >> /home/anich/.profile && \
    chown anich:anich /home/anich/.profile
