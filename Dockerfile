# Use official Tomcat image
FROM tomcat:10.1-jdk17

# Remove default Tomcat apps like docs/examples
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your index.html to ROOT folder of Tomcat
COPY index.html /opt/tomcat/webapps/static/index.html

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

