FROM openjdk:17-slim

# defining working directory inside docker container
WORKDIR /application

# a variable that holds the jar file
ARG JAR_FILE=target/spring-petclinic-customers-service-3.2.7.jar

# copying jar file into directory /application/application.jar
COPY ${JAR_FILE} application.jar

# defining port that it will be ran on
EXPOSE 8081

# Set the active profile to be passed dynamically during container run
ENV SPRING_PROFILES_ACTIVE docker,mysql

# running the jar file
ENTRYPOINT ["java", "-jar", "application.jar"]


### sta sam jos mogao uraditi jeste da uradim je da utvrdim da jar file postoji pomocu komande:
### RUN mvn clean package