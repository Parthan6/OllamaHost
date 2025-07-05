#!/bin/sh

# Start Ollama server in the background
ollama serve &

# Wait for server to start
echo "⏳ Waiting for Ollama to be ready..."
until curl --silent --fail http://localhost:11434; do
  sleep 1
done

# Pull model AFTER server is ready
echo "📥 Pulling mistral model..."
ollama pull mistral

# Keep the container running
wait
