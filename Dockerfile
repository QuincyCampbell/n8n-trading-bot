FROM n8nio/n8n:latest

# Basic configuration
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Green126!

# Webhook URL
ENV WEBHOOK_URL=https://upbeat-reflection-production.up.railway.app

# Use file system instead of complex DB setup
ENV N8N_USER_FOLDER=/home/node/.n8n

# Expose port
EXPOSE 5678

# Simple startup
CMD ["n8n"]
