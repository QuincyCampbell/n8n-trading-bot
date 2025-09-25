FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Configure n8n environment
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV NODE_ENV=production

# Authentication settings
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin  
ENV N8N_BASIC_AUTH_PASSWORD=Green126!

# Webhook configuration  
ENV WEBHOOK_URL=https://upbeat-reflection-production.up.railway.app

# Database settings (use SQLite for simplicity)
ENV DB_TYPE=sqlite
ENV DB_SQLITE_DATABASE=/home/node/.n8n/database.sqlite

# Other n8n settings
ENV N8N_PAYLOAD_SIZE_MAX=16777216
ENV N8N_METRICS=false

# Expose port
EXPOSE 5678

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:5678/ || exit 1

# Start n8n (this should be LAST)
CMD ["n8n", "start"]
