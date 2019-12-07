node {
  def app
  def versionnum
  stage('Clone repository') {
    checkout scm
 
  } 
  stage('Build image') {
    sh 'pwd'
    app = docker.build("prawinkorvi/petclinicimage")
  
  }
  stage('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
      app.push("${env.BUILD_NUMBER}")
    }
  }
  stage('Deploy') {
    sh '/usr/local/bin/helm upgrade --install petclinic /var/lib/jenkins/petclinic/ --recreate-pods --set image.repository=registry.hub.docker.com/prawinkorvi/petclinicimage --set image.tag=${BUILD_NUMBER}'
  }
}
