FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y openjdk-8-jre-headless wget curl

# Set working directory
WORKDIR /app

# Copy your BungeeCord files
COPY bungee /app/bungee

# Copy your startup script
COPY main.sh /app/main.sh
RUN chmod +x /app/main.sh

# Expose the BungeeCord port
EXPOSE 8081

# Run the startup script
CMD ["./main.sh"]