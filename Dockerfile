FROM jenkinsci/jenkins:2.0

COPY jenkins_home/ /var/jenkins_home
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
