# You can use the official wildfly image if you're planning to run Java 8 web apps
FROM mechero/wildfly:13.0.0-openjdk-10

ARG WAR_FILE

# Expose the default's application port
EXPOSE 8080

# Copy the war file to the deployments folder
# COPY ${WAR_FILE} /opt/jboss/wildfly/standalone/deployments/app.war
COPY target/springboot-docker-0.0.1-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/springboot-docker.war
