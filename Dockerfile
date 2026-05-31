FROM n8nio/n8n:latest

USER root

# Instalar Python e dependências básicas
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    curl \
    wget \
    gnupg \
    ca-certificates \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libx11-6 \
    libxcomposite1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libasound2 \
    libpangocairo-1.0-0 \
    libpango-1.0-0 \
    libcairo2 \
    && rm -rf /var/lib/apt/lists/*

# Instalar Playwright via pip
RUN pip3 install playwright && playwright install --with-deps

USER node
