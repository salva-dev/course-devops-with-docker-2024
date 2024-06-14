FROM golang:1.16.15-alpine3.15 as build-stage
# Following the convention
WORKDIR /usr/src/app 

# Copy the repo files into image
COPY ./example-backend .

# Build the project
RUN go build

FROM alpine:3.15.11
EXPOSE 8080
WORKDIR /usr/local/bin

COPY --from=build-stage /usr/src/app/server .

# Create a non-root user 
RUN adduser -D -u 1000 appuser
# Switch to non-root user
# Be sure host has user with UID 1000
USER appuser

# Set variables needed
ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000

# Run
CMD ["./server", "."]