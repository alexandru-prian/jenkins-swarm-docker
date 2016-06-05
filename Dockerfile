FROM jenkins

COPY download-plugins.sh /usr/local/bin/download-plugins.sh
COPY trycatch.sh /usr/local/bin/trycatch.sh

COPY plugins.txt /usr/share/jenkins/plugins.txt

RUN /usr/local/bin/download-plugins.sh /usr/share/jenkins/plugins.txt /usr/share/jenkins/ref/plugins

# remove executors in master
COPY master-executors.groovy /usr/share/jenkins/ref/init.groovy.d/
