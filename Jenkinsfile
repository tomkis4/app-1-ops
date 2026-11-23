pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Witaj w Jenkins!'
            }
        }

        stage('Build') {
            steps {
                echo 'Budowanie aplikacji...'
                sh 'echo Build successful'
            }
        }

        stage('Test') {
            steps {
                echo 'Uruchamiam testy...'
                sh 'echo Tests passed'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Wdrażanie aplikacji...'
            }
        }
    }

    post {
        success {
            echo 'Pipeline zakończony sukcesem!'
        }
        failure {
            echo 'Pipeline zakończony błędem!'
        }
    }
}
