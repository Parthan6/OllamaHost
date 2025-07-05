#!/bin/sh

# Start Ollama server in background
ollama serve &

# Wait until Ollama is ready
echo "⏳ Waiting for Ollama to be ready..."
until curl --silent --fail http://localhost:11434; do
  sleep 1
done

echo "✅ Ollama is ready. Pulling mistral..."
ollama pull mistral

# Keep container alive
wait
