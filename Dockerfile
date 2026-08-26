# Use Tomcat 9 with JDK 8 (Perfect for apps built with Java 8 and 'javax' packages)
FROM docker.io/library/tomcat:9.0-jre8

# Copy our custom war file into Tomcat's webapps folder and rename it to ROOT.war
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
