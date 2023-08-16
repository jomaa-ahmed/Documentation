## Uploading to Nexus Stage

The **Uploading to Nexus** stage is responsible for uploading the Docker image to Nexus repository.

### Jenkinsfile Snippet:

```groovy
stage('Uploading to Nexus') {
    steps {
        sh 'docker login 172.18.0.3:8085 -u admin -p admin'
        sh 'docker tag <IMAGE_ID> 172.18.0.3:8085/<REPOSITORY_NAME>:<TAG>'
        sh 'docker push 172.18.0.3:8085/<REPOSITORY_NAME>:<TAG>'
    }
}
```

### Explanation:

    The stage('Uploading to Nexus') block defines the "Uploading to Nexus" stage in the Jenkins pipeline.

    The sh steps are used to execute Docker commands to interact with the Nexus repository.

    The docker login command is used to authenticate with the Nexus repository using the provided credentials (-u admin -p admin). Replace 172.18.0.3:8085 with the URL of your Nexus repository.

    The docker tag command is used to tag the Docker image with the Nexus repository information. Replace <IMAGE_ID>, <REPOSITORY_NAME>, and <TAG> with appropriate values.

    The docker push command is used to upload the tagged Docker image to the Nexus repository.

### Purpose:

The purpose of this stage is to publish the Docker image to the Nexus repository. Nexus is an artifact repository manager that helps store and manage Docker images, making them available for other developers or deployment pipelines.

By uploading the Docker image to Nexus, the image becomes a versioned artifact that can be easily retrieved and deployed in various environments. This ensures consistency and reliability in the deployment process, as the same version of the Docker image can be used across different stages of development and deployment.
