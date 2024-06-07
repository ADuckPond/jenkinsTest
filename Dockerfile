FROM openjdk:23-ea-jdk-oracle

ADD target /petclinic/target
WORKDIR /petclinic/target

CMD ["java","-jar","spring-petclinic-3.3.0-SNAPSHOT.jar"]