node {
	deleteDir()

	try {
		stage('Clone') {
			checkout scm
		}

		stage('Tests') {
			sh 'pip3 install -r requirements.txt'
			sh 'make test'
			junit '**/report.xml'
		}

		stage('Build') {
			sh 'make bake'
		}

		stage('Push') {
			sh 'make push_image'
		}
	} catch (error) {
		currentBuild.result = 'FAILED'

		throw error
	}
}