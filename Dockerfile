# Use the official n8n Docker image as the base
FROM n8nio/n8n

# Set the working directory inside the container
WORKDIR /home/node/

# Expose the default n8n port
EXPOSE 5678

# Command to run n8n when the container starts
CMD ["n8n"]
