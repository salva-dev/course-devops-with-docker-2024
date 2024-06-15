FROM amazoncorretto:8u412-alpine3.19 as build-stage

WORKDIR /usr/src/app

# Copy the repo files into image
COPY ./spring-example-project .

# Build the project
RUN ./mvnw package

FROM amazoncorretto:8u412-alpine3.19
EXPOSE 8080
WORKDIR /usr/app

# Copy the jar for execute the app
COPY --from=build-stage /usr/src/app/target/docker-example-1.1.3.jar .

# Create a non-root user 
RUN adduser -D -u 1000 appuser
# Switch to non-root user
# Be sure host has user with UID 1000
USER appuser

# Run the app
CMD ["java", "-jar", "./docker-example-1.1.3.jar"]