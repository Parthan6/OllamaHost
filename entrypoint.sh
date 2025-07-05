#!/bin/sh

# Start Ollama in background
ollama serve &

# Wait a few seconds
sleep 10

# Pull the model (optional)
ollama pull mistral

# Keep running
tail -f /dev/null
