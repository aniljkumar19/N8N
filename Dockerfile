FROM n8nio/n8n:latest
ENV N8N_USER_FOLDER=/home/node/.n8n
ENV N8N_LISTEN_ADDRESS=0.0.0.0
CMD ["/bin/sh", "-lc", "export N8N_PORT=${PORT:-5678}; n8n start"]
