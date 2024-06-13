FROM golang:1.16.15-alpine3.15

EXPOSE 8080

# Following the convention
WORKDIR /usr/src/app

# Copy the repo files into image
COPY ./example-backend .

# Build the project
RUN go build

# Set variables needed
ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000

# Create a non-root user and switch to it
# Be sure host has user with UID 1000
RUN adduser -D -u 1000 appuser
USER appuser

# Run
CMD ["./server", "."]