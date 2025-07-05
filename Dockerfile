# Use official Ollama base image
FROM ollama/ollama:latest

# Expose Ollama's default API port
EXPOSE 11434

# Start the server and pull mistral when the container starts
CMD ollama serve & sleep 5 && ollama pull mistral && wait

