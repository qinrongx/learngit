pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        isUnix
      }
    }
    stage('Test') {
      steps {
        sh 'printenv'
      }
    }
    stage('Deploy') {
      steps {
        sleep 10
      }
    }
  }
}
