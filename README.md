jenkins-swarm-docker
====================

Docker image for Jenkins, with swarm, pipeline and docker plugins installed.
Based on the [official image](https://registry.hub.docker.com/_/jenkins/).

Can be used with Docker slaves from [`csanchez/jenkins-swarm-slave`](https://registry.hub.docker.com/u/csanchez/jenkins-swarm-slave/)

# Building

    docker build -t swoop-alex/jenkins-swarm .

# Running

    docker run --name jenkins -p 8080:8080 -p 50000:50000 -v /var/jenkins_home swoop-alex/jenkins-swarm