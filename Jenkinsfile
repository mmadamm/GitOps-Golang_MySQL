pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials("dockerrr-hub")
    }
    stages {

        stage("build image"){
            steps {
                sh 'docker build -t adam4devops/insta-app:v1 .'
                sh " echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
                sh 'docker push adam4devops/insta-app:v1'
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
}
