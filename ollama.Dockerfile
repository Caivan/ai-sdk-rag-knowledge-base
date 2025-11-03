# Use the official Ollama image as base (or a lighter one if desired)
FROM ollama/ollama:latest

# Copy startup script
COPY start-ollama.sh /usr/local/bin/start-ollama.sh
RUN chmod +x /usr/local/bin/start-ollama.sh

# Expose Ollama’s API port
EXPOSE 11434

# Use the script as entrypoint
ENTRYPOINT ["/usr/local/bin/start-ollama.sh"]
CMD ["serve"]