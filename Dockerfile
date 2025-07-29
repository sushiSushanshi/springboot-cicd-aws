# Use an official OpenJDK runtime as a base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
#WORKDIR /app

# Copy the jar file into the container
COPY target/api-0.0.1-SNAPSHOT.jar app.jar
# or for Gradle:
# COPY build/libs/app.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
