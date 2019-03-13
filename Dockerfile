FROM jboss/wildfly:15.0.1.Final

ADD resources/ge-doc-viewer.war /opt/jboss/wildfly/standalone/deployments/
ADD resources/visionneuse.properties /opt/jboss/wildfly/standalone/configuration/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-P", "/opt/jboss/wildfly/standalone/configuration/visionneuse.properties"]
