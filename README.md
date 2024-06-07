# Spring Petclinic via Jenkins Pipeline

## Building the Docker Image

To successfully build the Docker image, ensure that the Docker daemon is installed and running in the environment where Jenkins is executing the pipeline. In this example, the pipeline is executed on the localhost where Jenkins and the Docker daemon are installed.

You may also need to add the Jenkins user to the docker group for the build command to execute successfully. You can do that by executing the following command (on the Jenkins host in this example) and restarting Jenkins:

```sudo usermod -aG docker Jenkins```

## Running the Container

To run the container built from this Jenkins pipeline, use the following command:

```docker run -d -p 8081:8080 agerlitz/petclinic:latest```

In this example, bothe the Docker daemon and Jenkins are running on the local machine. As a result, applications and running containers are reachable on localhost. To access the application, open a web browser and navigate to localhost:8081.

For more detailed information about the Spring Petclinic application see the following:
<https://github.com/spring-projects/spring-petclinic>