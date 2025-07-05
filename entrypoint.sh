#!/bin/sh

# Start the Ollama server
export OLLAMA_HOST=0.0.0.0
ollama serve &

# Give server time to initialize
sleep 10

# Pull the model (replace with your model, e.g., llama3, codellama, etc.)
ollama pull qwen2

# Keep container running
tail -f /dev/null


