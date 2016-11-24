FROM jboss/wildfly:10.1.0.Final

RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent

# Expose the ports we're interested in
EXPOSE 8080 9990

# Set the default command to run on boot
# This will boot WildFly in the standalone mode and bind to all interface
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]