pipeline {
    agent{
        label 'AGENT-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds() 
        ansicolor('xterm')
    }
   
    stages {
        stage('init') {
            steps {
                sh """
                cd 01-vpc
                terraform init -reconfigure

                """
            }
        }
        stage('plan') {
            steps {
                sh 'echo this is test'
                sh 'sleep 10'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo this is deploy' 
            }
        }
        
    }
    post { 
        always { 
            echo 'I will always say Hello again!'  
        }
        success { 
            echo 'I will run when pipeline is success'
        }
        failure { 
            echo 'I will run when pipeline is failure'
        }
    }
}