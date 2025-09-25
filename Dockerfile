# Step 1: Choose base image (pre-built n8n)
FROM n8nio/n8n:latest

# Step 2: Set environment variables (configuration)
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Green126!
ENV WEBHOOK_URL=https://n8n-trading-bot.up.railway.app/

# Step 3: Tell Docker which port to expose
EXPOSE 5678

# Step 4: Command to run when container starts
CMD ["n8n", "start"]
