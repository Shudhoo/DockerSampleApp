# 🐳 Dockerized Java Web App with Tomcat on Ubuntu

This project demonstrates how to containerize a Java web application (`sampleapp.war`) using Docker. The container is based on `ubuntu:latest`, with Tomcat and JDK installed. The `.war` file is deployed to Tomcat inside the container, and the whole setup is orchestrated using Docker Compose.

##  Dockerfile Overview
Basically, this image is built on top of **Ubuntu**.  
So, I first configured **Tomcat** and **JDK** to run my `sampleapp.war` file inside the container — which was built using **Maven**.  
I also copied the `sampleapp.war` file into the container and set the necessary **environment variables**.
- **Base Image**: `ubuntu:latest`
- **Installs**:
  - OpenJDK
  - Apache Tomcat
- **Copies**: `sampleapp.war` into Tomcat's webapps directory
- **Sets**: Necessary environment variables for Java and Tomcat
- **Runs**: Tomcat server on container startup
- ##  Docker Compose

The `docker-compose.yml` file is used to build the image and run the container from the local setup. It helps simplify the container startup process and manage services.
- **Custom Bridge Network**: Ensures isolated communication between containers if needed  
- **Volumes**: Persist application logs outside the container lifecycle


