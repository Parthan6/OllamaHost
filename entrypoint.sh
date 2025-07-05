#!/bin/sh

# Start Ollama in the background
ollama serve &

# Wait for it to boot
sleep 10

# Pull your model (choose one)
ollama pull qwen2:1.5b
# ollama pull mistral

# Keep container alive
tail -f /dev/null

