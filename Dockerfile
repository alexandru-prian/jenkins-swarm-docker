FROM jenkins

COPY install-plugins.sh /usr/local/bin/install-plugins.sh

RUN ls /usr/local/bin/

RUN /usr/local/bin/install-plugins.sh docker-plugin swarm workflow-aggregator docker-workflow git

# remove executors in master
COPY master-executors.groovy /usr/share/jenkins/ref/init.groovy.d/
