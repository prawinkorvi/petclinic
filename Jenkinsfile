node {
  def app
  def versionnum
  stage('Clone repository') {
    checkout scm
	
  }
  stage('mvn package'){
   sh 'mvn clean package'

  } 
  stage('Build image') {
    app = docker.build("petclinicimage")
  
    app = docker.build("prawinkorvi/petclinicimage",)
  }
  stage('Push image') {
    docker.withRegistry('https://registry.hub.docker.com' 'dockerhub',) {
      app.push("${env.BUILD_NUMBER}")
    }
  }
  stage('Deploy') {
    sh '/usr/local/bin/helm upgrade --install petclinic /var/lib/jenkins/petclinic/ --recreate-pods --set image.repository=https://registry.hub.docker.com --set image.tag=${BUILD_NUMBER}'
  }
