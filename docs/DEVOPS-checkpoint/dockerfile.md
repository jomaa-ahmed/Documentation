# Use an official Deno image as the base image
FROM hayd/deno:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Deno app source code to the container
COPY . .

# Expose the port that your Deno app listens on
EXPOSE 8080

# Run the Deno app when the container starts
CMD ["run", "--allow-net", "app.ts"]
