FROM openjdk:17-slim

# defining working directory inside docker container
WORKDIR /application

# Copy the JAR file generated in the builder stage using a wildcard
#COPY --from=builder /app/target/*.jar application.jar

# a variable that holds the jar file
ARG JAR_FILE=target/spring-petclinic-visits-service-3.2.7.jar

# copying jar file into directory /application/application.jar
COPY ${JAR_FILE} application.jar

ENV SPRING_PROFILES_ACTIVE docker,mysql

# defining port that it will be ran on
EXPOSE 8082

# running the jar file
ENTRYPOINT ["java", "-jar", "application.jar"]