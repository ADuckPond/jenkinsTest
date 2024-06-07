# jenkinsTest

In order to successfully build the docker image you will need the docker daemon installed and running in the environment where Jenkins is executing the pipeline. In this example I have used the local host where Jenkins is installed to execute pipelines. As a result I needed docker installed on that base host. 

You may also need to add the Jenkins user to the docker group in order for the build command to execute successfully. You can do that by executing the following command (on the Jenkins host in this example) and restarting Jenkins:

sudo usermod -aG docker Jenkins

To run the container that is built from this Jenkins pipeline use the following command:

docker run -d -p 8081:8080 agerlitz/petclinic:latest

In this example I am running the docker daemon and jenkins on my local machine. As a result applications and running containers are reachable on localhost. To access the application in this example open a web browser and navigate to localhost:8081.