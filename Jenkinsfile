pipeline {
	agent any
    stages {
        stage('Build on k8 ') {
            steps {           
                        sh 'pwd'
                        sh 'cp -R petclinic-CD/helm/* .'
		        sh 'ls -ltr'
                        sh 'pwd'
                        sh '/usr/local/bin/helm upgrade --install petclinic petclinic  --set image.repository=registry.hub.docker.com/prawinkorvi/petclinic --set image.tag=1'
              			
            }           
        }
    }
}
