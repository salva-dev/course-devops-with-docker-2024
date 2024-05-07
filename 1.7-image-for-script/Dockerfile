# Start from the alpine image
FROM ubuntu:22.04

# Install curl
RUN apt-get update && apt-get install -y curl

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the script.sh and give permission to execute
COPY script.sh .
RUN chmod u+x script.sh

# When running Docker run the command will be ./hello.sh
CMD sh ./script.sh