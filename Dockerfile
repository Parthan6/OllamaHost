# Use Ollama's official base image
FROM ollama/ollama:latest

# Automatically pull the desired model (e.g., mistral) on startup
RUN ollama pull mistral

# Expose the default Ollama API port
EXPOSE 11434

# Start the Ollama server
CMD ["ollama", "serve"]
