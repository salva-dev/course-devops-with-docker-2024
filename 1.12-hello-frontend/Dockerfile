FROM node:16.20.2-alpine3.18

EXPOSE 5000

# Following the convention
WORKDIR /usr/src/app

# Copy the repo files into image
COPY ./example-frontend .

# Install web server and prerequisites
RUN npm install -g serve
RUN npm install

# Build the project
RUN npm run build

# Run
CMD ["serve", "-s", "-l", "5000", "build"]