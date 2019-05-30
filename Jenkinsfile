pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        isUnix()
        echo 'Building...'
      }
    }
    stage('Test') {
      steps {
        sh 'printenv'
      }
    }
    stage('Deploy') {
      steps {
        echo "Sleeping 10 seconds"
        sleep 10
      }
    }
  }
}
