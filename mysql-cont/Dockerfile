# Use the official MySQL image as the base
FROM mysql:5.7

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=petclinic
ENV MYSQL_DATABASE=petclinic
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=petclinic

ENV SPRING_PROFILES_ACTIVE docker,mysql

# Expose the MySQL default port
EXPOSE 3307:3306