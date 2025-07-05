FROM ollama/ollama

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Override default entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Expose the Ollama API port
EXPOSE 11434

