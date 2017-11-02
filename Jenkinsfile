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
				echo 'testing'
				// sh 'make test'
			}
		}

		stage('Bake Image') {
			steps {
				echo 'baking'
				// sh 'make bake'
			}
		}

		stage('Push Image') {
			steps {
				echo 'pushing image'
				// sh 'make push_image'
			}
		}		
	}


	post {
		always {
			junit "report.xml"
		}
	}
}