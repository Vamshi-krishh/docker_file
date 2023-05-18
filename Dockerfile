# Use the official MySQL image as the base
FROM mysql:latest

# Set environment variables
ENV MYSQL_ROOT_PASSWORD password

# Copy the SQL script to the container
COPY your_script.sql /docker-entrypoint-initdb.d/

# Set the working directory
WORKDIR /docker-entrypoint-initdb.d/

# Grant necessary permissions to the SQL script
RUN chmod 644 /docker-entrypoint-initdb.d/your_script.sql

# Expose the MySQL port
EXPOSE 3306

# Start MySQL server on container startup
CMD ["mysqld"]
