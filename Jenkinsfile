pipeline {
	agent any

	stage('Checkout Code') {
		checkout scm
	}

	stage('Run Tests') {
		sh 'make test'
	}

	stage('Bake Image') {
		sh 'make bake'
	}

	stage('Push Image') {
		sh 'make push_image'
	}

	post {
		always {
			junit "/home/report.xml"
		}
	}
}