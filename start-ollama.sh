#!/usr/bin/env bash
set -e

# Start Ollama server (daemon) in background
ollama serve &

# Wait a bit for the server to be up (you might loop/check health instead of fixed sleep)
sleep 5

# Pull the lightweight model
ollama pull llama3.2:1b

# (Optionally) pull an embeddings / tool model too, e.g.
# ollama pull nomic-embed-text:latest

# Keep the container alive: wait for the serve process
wait