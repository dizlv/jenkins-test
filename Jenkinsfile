pipeline {
	agent any

	stages {
		stage('Checkout Code') {
			steps {
				checkout scm
			}
		}

		stage('Run Tests') {
			steps {
				sh 'make test'
			}
		}

		stage('Bake Image') {
			steps {
				sh 'make bake'
			}
		}

		stage('Push Image') {
			steps {
				sh 'make push_image'
			}
		}		
	}


	post {
		always {
			junit "/home/report.xml"
		}
	}
}