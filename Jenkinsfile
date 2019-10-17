pipeline {
  agent none
  stages {
    stage('test') {
      agent {
        dockerfile {
          filename 'test'
        }

      }
      steps {
        sh 'echo test'
      }
    }
  }
}