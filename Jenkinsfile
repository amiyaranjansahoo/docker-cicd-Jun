pipeline {
	agent any
	tools {
	  maven 'maven3'
	}
	
	stages {
		stage('code for Build using maven') {
			steps {
				sh 'mvn clean package'
			}
		}
		
		stage('code for docker build') {
			steps {
				echo ( "code for docker build")
			}
		}
		
		stage('code for pushing the docker image to docker hub') {
			steps {
				echo ( "code for pushing the docker image to docker hub")
			}
		}
		
		stage('Push the code to docker-dev server for deployment') {
			steps {
				echo ( "Push the code to docker-dev server for deployment")
			}
		}
	}
}
