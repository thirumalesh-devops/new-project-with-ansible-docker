pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                echo "Cloning the code from the GITHUB...!"
		checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '7ad72e84-9594-4867-bdf3-4e452fb4be23', url: 'https://github.com/vtiru05/new-project-with-ansible-docker.git']]])
            }
        }
        stage('Build Docker image') {
            steps {
                echo "Build the Docker image from the Dockerfile"
                sh 'docker build -t thirumalesh:v1.0 .'
            }
        }
        stage('Run Ansible playbook') {
            steps {
                echo "Run the Ansible playbook"
                sh 'ansible-playbook '
            }
        }
    }
}
