
pipeline {
    agent any

    parameters {
        string(
            name: 'GREETING',
            defaultValue: 'Hello',
            description: 'The greeting message'
        )

        choice(
            name: 'BRANCH',
            choices: ['master', 'dev'],
            description: 'Branch to build'
        )

        booleanParam(
            name: 'DEPLOY',
            defaultValue: false,
            description: 'Enable deployment'
        )
    }

    stages {
        stage('Example') {
            steps {
                echo "${params.GREETING}, we are building the ${params.BRANCH} branch."
            }
        }

        stage('Deploy') {
            when {
                expression {
                    return params.DEPLOY
                }
            }
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
