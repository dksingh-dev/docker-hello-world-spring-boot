#pull base image
FROM openjdk:8-jdk-alpine

VOLUME /tmp

#maintainer 
MAINTAINER dksingh.dev@gmail.com

#WORKDIR /Users/dsingh/dk/docker/aws-eks/docker-hello-world-spring-boot

#expose port 8080
EXPOSE 3001


#default command
#CMD java -jar hello-world-0.1.0.jar

#copy hello world to docker image
ADD dks/hello-world-0.1.0.jar hello-world-0.1.0.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","hello-world-0.1.0.jar"]
