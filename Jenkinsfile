pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                echo "Cloning the code from the GITHUB...!"
                git 'https://https://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@github.com/vtiru05/new-project-with-ansible-docker.git@github.com/vtiru05/new-project-with-ansible-docker.git'
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
