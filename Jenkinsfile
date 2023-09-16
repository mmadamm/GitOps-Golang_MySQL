pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials("DockerHub")
        GIT_COMMIT_NUMBER = sh(returnStdout: true, script: "git rev-parse --short=10 HEAD").trim()
    }
    stages {
        stage ("git checkout"){
            steps {
                git 'https://github.com/AdamAFD/GitOps-Golang_MySQL'
            }
        }
        stage("build image"){
            steps {
                sh "docker build -t adam4devops/insta-app:${env.GIT_COMMIT_NUMBER} -t adam4devops/insta-app:latest ."
            }
        }
        stage("dockerhub login"){
            steps{
                sh " echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
            }
        }
        stage("push image"){
            steps{
                sh "docker push adam4devops/insta-app:${env.GIT_COMMIT_NUMBER}"
                sh "docker push adam4devops/insta-app:latest"
            }
        }
       
    post {
        always{
            sh "docker logout"
        }
		failure{
            mail to : "ahmed.adam.1597@gmil.com",
            subject : "Build ${env.BUILD_ID} Failed ",
            body: "Build Failed"
        }
	}
}
}