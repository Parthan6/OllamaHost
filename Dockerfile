FROM debian:bullseye-slim

# Install curl and ollama
RUN apt-get update && apt-get install -y curl gnupg && \
    curl -fsSL https://ollama.com/install.sh | sh && \
    rm -rf /var/lib/apt/lists/*

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Use custom entrypoint to run ollama + pull model
ENTRYPOINT ["/entrypoint.sh"]

# Expose Ollama API port
EXPOSE 11434


