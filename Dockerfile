# 1. Start from your base image
FROM ghcr.io/swissdatasciencecenter/renku/py-basic-vscodium:2.10.0

# 2. Switch to root to install packages
USER root

# 3. Install dependencies (as root)
RUN apt-get update && apt-get install -y \
    # Add any packages you want here.
    # htop is an example package, it can be removed.
    htop \
    && rm -rf /var/lib/apt/lists/*

# 4. Switch back to the original user
USER renku
