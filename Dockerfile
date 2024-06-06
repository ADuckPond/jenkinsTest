FROM alpine:3.20.0

RUN mkdir petclinic
ADD target /petclinic/.
WORKDIR /petclinic/target

ENTRYPOINT ["java","-jar","spring-petclinic-3.3.0-SNAPSHOT.jar"]