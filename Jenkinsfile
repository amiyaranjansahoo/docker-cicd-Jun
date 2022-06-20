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
				sh "docker login -u amiyaranjansahoo -p ${dockerPassword}"
				sh "docker push amiyaranjansahoo/myappl"
			}
			}
		}
		
		stage('Push the code to docker-dev server for deployment') {
			steps {
				
				
				sshagent(['jenkins-linux-agent1']) {
	sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.42.64 docker container rm -f myweb "
    sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.42.64 docker run -itd -p 8080:8080 --name myweb amiyaranjansahoo/myappl"
		}
			}
		}
	}
}
