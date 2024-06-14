FROM node:16.20.2-alpine3.18 as build-stage
WORKDIR /usr/src/app

# Copy the repo files into image
COPY ./example-frontend .
# Install web server and prerequisites
RUN npm install
ARG REACT_APP_BACKEND_URL=http://localhost:8080
# Build the project
RUN npm run build

# we will now add a new stage
FROM nginx:1.27.0-alpine
EXPOSE 80

COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html