# Example: Install a community node
FROM n8nio/n8n
WORKDIR /home/node/
EXPOSE 5678

# Set environment variable to reinstall missing packages
ENV N8N_REINSTALL_MISSING_PACKAGES=true
# Set custom extensions directory
ENV N8N_CUSTOM_EXTENSIONS=/home/node/custom-nodes/

# Create a directory for custom nodes
RUN mkdir -p /home/node/custom-nodes/

# Install a specific community node
RUN npm install n8n-nodes-text-manipulation --prefix /home/node/custom-nodes/

CMD ["n8n"]
