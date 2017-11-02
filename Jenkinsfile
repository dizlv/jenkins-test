node {
	deleteDir()

	try {
		stage('Clone') {
			steps {
				checkout scm
			}
		}

		stage('Tests') {
			steps {
				sh 'make test'
			}
		}

		stage('Build') {
			steps {
				echo 'baking'
				// sh 'make bake'
			}
		}

		stage('Push') {
			steps {
				echo 'pushing image'
				// sh 'make push_image'
			}
		}		
	} catch (error) {
		currentBuild.result = 'FAILED'

		throw error
	}

	post {
		always {
			junit "report.xml"
		}
	}
}