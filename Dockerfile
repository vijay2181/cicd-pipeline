#jboss/wildfly
FROM adamtravis/wezvabaseimage
WORKDIR /opt/jenkins/workspace/cicd/samplewar
ADD ./target/samplewar.war /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
