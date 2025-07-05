export OLLAMA_HOST=0.0.0.0
ollama serve &

sleep 10

ollama pull qwen2

tail -f /dev/null


