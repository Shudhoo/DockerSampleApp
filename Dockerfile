#For this is app we are using ubuntu:latest version as our base image 
FROM ubuntu:latest

COPY jdk-17.0.10+7 /opt/java
ENV JAVA_HOME=/opt/java

COPY apache-tomcat-8.5.37 /opt/tomcat
ENV APACHE_TOMCAT=/opt/tomcat

#Copy file from my /root directory to container 
COPY sampleapp.war /opt/tomcat/webapps/

#This is the port where our app listens
EXPOSE 8080

#This is the command which will execute  when the cont will run
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
