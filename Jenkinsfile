pipeline {
    agent any

    tools {
        maven 'localMaven'
    }

    triggers {
        pollSCM('* * * * *')
    }

    stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
                sh 'docker build . tomcatwebapp:{env.BUILD_ID}' //working dir is maven-project, so it will look there for Dockerfile
            }

        }
    }
}