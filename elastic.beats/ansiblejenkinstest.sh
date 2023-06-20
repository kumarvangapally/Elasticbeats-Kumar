pipeline {
	agent {label 'Jenkins-Slave'}
	stages {
		stage ('ansibletest') {
			steps {
				sh '''
					ansible --version
					ansible-playbook --version
					ansible-galaxy --version
				'''
				}
			}
		}
	}
