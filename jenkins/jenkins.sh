docker run --name my-jenkins -p 8080:8080  --user root -v "c:/jenkins_home":/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -d my-jenkins:latest
