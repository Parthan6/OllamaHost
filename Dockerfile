FROM ollama/ollama:latest

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose API port
EXPOSE 11434

# Start from the script
CMD ["/entrypoint.sh"]


