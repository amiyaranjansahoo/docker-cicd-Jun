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
				sh "docker build . -t amiyaranjansahoo/myappl"
			}
		}
		
		stage('code for pushing the docker image to docker hub') {
			steps {
				withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerPassword')]) {
				sh 'docker login -u amiyaranjansahoo -p ${dockerPassword}'
				sh 'docker push amiyaranjansahoo/myappl'
			}
			}
		}
		
		stage('Push the code to docker-dev server for deployment') {
			steps {
				echo ( "Push the code to docker-dev server for deployment")
			}
		}
	}
}
