# Start with the official Go image
FROM golang:1.17

# Set the working directory inside the container
WORKDIR /app

# Copy the local package files to the container's workspace
COPY . .

# Build the Go application
RUN go build -o slr .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./slr"]
