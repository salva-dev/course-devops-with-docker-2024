FROM node:16.20.2-alpine3.18

EXPOSE 5000

# Following the convention
WORKDIR /usr/src/app

# Copy the repo files into image
COPY ./example-frontend .

# Install web server and prerequisites
RUN npm install -g serve@14.2.3 \
    && npm install

# Build the project
ARG REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm run build

# Run
CMD ["serve", "-s", "-l", "5000", "build"]