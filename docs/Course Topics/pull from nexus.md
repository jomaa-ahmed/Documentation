## Pull from Nexus Stage

The **Pull from Nexus** stage is responsible for pulling the Docker image from the Nexus repository.

### Jenkinsfile Snippet:

```groovy
stage('Pull from Nexus') {
    steps {
        sh 'docker pull 172.18.0.3:8085/<REPOSITORY_NAME>:<TAG>'
    }
}
```

### Explanation:

    The stage('Pull from Nexus') block defines the "Pull from Nexus" stage in the Jenkins pipeline.
    The sh step is used to execute the Docker command docker pull to fetch the Docker image from the Nexus repository.
    Replace <REPOSITORY_NAME> and <TAG> with the appropriate values to identify the specific Docker image in the Nexus repository.

### Purpose:

The purpose of this stage is to retrieve the Docker image from the Nexus repository. After successfully pulling the image, it can be used for deployment or further testing.

By pulling the Docker image from Nexus, you ensure that the image used for deployment is the same version that was previously uploaded and stored in Nexus. This helps maintain consistency and reliability across different environments and stages of the deployment pipeline.
