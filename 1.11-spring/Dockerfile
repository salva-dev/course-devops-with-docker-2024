FROM amazoncorretto:8u412-alpine3.19

EXPOSE 8080

# Following the convention
WORKDIR /usr/src/app

# Copy the repo files into image
COPY ./spring-example-project .

# Build the project
RUN ./mvnw package

# Run
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]