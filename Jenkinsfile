
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
                bat 'echo Build successful'
            }
        }

        stage('Test') {
            steps {
                echo 'Uruchamiam testy...'
                bat 'echo Tests passed'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Wdrażanie aplikacji...'
                bat 'echo Deploy successful'
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
