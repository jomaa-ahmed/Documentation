## Install Dependency Stage

The **Install Dependency** stage is responsible for installing project dependencies using npm.

### Jenkinsfile Snippet


```
stage('Install Dependency') {
    steps {
        sh 'npm install'
    }
}
```


### Explanation :

The stage('Install Dependency') block defines the "Install Dependency" stage in the Jenkins pipeline. The sh step is used to execute the command npm install, which installs the project dependencies based on the package.json file.


### Purpose:

The purpose of this stage is to ensure that all required dependencies for the project are installed. By executing npm install, Jenkins fetches and installs the necessary packages from the npm registry. These dependencies are essential for the successful execution of the subsequent stages, such as building and testing the application.