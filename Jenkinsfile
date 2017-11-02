node {
	deleteDir()

	try {
		stage('Clone') {
			checkout scm
		}

		stage('Build') {
			sh 'make bake'
		}

		stage('Tests') {
			sh 'make test'
			junit '**/report.xml'
		}

		stage('Push') {
			sh 'make push_image'
		}
	} catch (error) {
		currentBuild.result = 'FAILED'

		throw error
	}
}