FROM java:openjdk-8-jre
MAINTAINER Gianluca Mereu <docker@gianlucamereu.it>

ENV JARFILE "/jenkins_slave.jar"

RUN \
        echo '#!/bin/bash\n[ -f $JARFILE ] || wget -O $JARFILE ${JENKINS_URL}/jnlpJars/slave.jar' > /startup.sh && \
        echo 'java -jar $JARFILE -jnlpUrl ${JENKINS_URL}/computer/${JENKINS_SLAVE_NAME}/slave-agent.jnlp -secret $SECRET' >> /startup.sh && \
    chmod +x /startup.sh

CMD "/startup.sh"
