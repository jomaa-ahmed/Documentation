## Quality Gate Stage

The **Quality Gate** stage checks if the code meets predefined quality standards and criteria.

### Explanation:

The `stage('Quality Gate')` block defines the "Quality Gate" stage in the Jenkins pipeline.

### Purpose:

The purpose of this stage is to evaluate the code against specific quality standards, such as code coverage, code duplication, and other metrics defined in the SonarQube Quality Gate. If the code meets the defined criteria, the pipeline can proceed to the next stages. Otherwise, the pipeline may halt, preventing the deployment of low-quality code.

