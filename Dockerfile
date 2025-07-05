FROM debian:bullseye-slim

# Install dependencies and Ollama
RUN apt-get update && apt-get install -y curl gnupg ca-certificates && \
    curl -fsSL https://ollama.com/install.sh | sh && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose the default Ollama port
EXPOSE 11434

# Start script
ENTRYPOINT ["/entrypoint.sh"]


