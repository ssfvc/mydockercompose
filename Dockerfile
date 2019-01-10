FROM tomcat:8.5.37-jre8
MAINTAINER maha@gmail.com
RUN apt-get update
COPY /home/jenkins/workspace/dockerjob1/target/mahaLogin-1.0.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
