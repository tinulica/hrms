# Base on Ubuntu
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Install system deps
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      python3 python3-pip python3-venv git mariadb-server \
      redis-server nodejs npm yarn wkhtmltopdf && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Bench CLI
RUN pip3 install frappe-bench

# Expose Frappe port
EXPOSE 8000
