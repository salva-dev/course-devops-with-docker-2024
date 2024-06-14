FROM golang:1.16.15-alpine3.15

EXPOSE 8080

# Following the convention
WORKDIR /usr/src/app

# Copy the repo files into image
COPY ./example-backend .

# Build the project
# Create a non-root user 
# I put two shell commands together for minimze layers
RUN go build && adduser -D -u 1000 appuser && cp ./server /usr/local/bin && rm -rf /usr/src/app

# Set variables needed
ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000

# Switch to non-root user
# Be sure host has user with UID 1000
USER appuser

WORKDIR /usr/local/bin

# Run
CMD ["./server", "."]