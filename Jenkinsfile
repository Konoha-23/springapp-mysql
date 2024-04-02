pipeline{
  agent { 
        label 'docker'
  }
  tools{
    maven "maven"
  }
  stages{
    //stage('GitClone'){
    //  steps{
    //    echo "cloning the lastest applications version"
    //    git "https://github.com/Konoha-23/Konoha_maven-web-application.git"
    //  }
    //}
    stage('Test+Build'){
    steps{
      sh "echo Running unitTesting"
      sh "mvn clean package"
      echo "echo test successful and backupArtifacts created"
      }
    }
    //stage('codeQuality'){
    //steps{
      //sh "echo Running detail code analysis"
      //sh "mvn sonar:sonar"
      //sh  "echo All conditions met/passed"
      //}
    //}
    stage('predeployment'){
    steps{
      sh "echo creating docker image"
      sh "docker build -t princebabs/dragonball-spring . "
      }
    }
      //stage('login to DockerHub'){
        //withCredentials([usernamePassword(credentialsId: 'DockerHub-Credentials', passwordVariable: 'DOCKER_HUB_PASSWORD', usernameVariable: '')]) {
          //sh "docker login -u princebabs -p ${DOKCER_HUB_PASSWORD} "
      //}
    //}
    stage('Push to DockerHub'){
      steps{
        sh "docker push princebabs/dragonball-spring"
      }
    }
    //stage('UnDeploy'){
    //  steps{
    //    sh "echo UNDEPLOYING existing application"
    //    sh "docker rm -f webapp"
    //  }
    //}
    stage('deployment'){
      steps{
        sh "echo application ready for deployment"
        sh "docker run -d -p 80:8080 --name konoha princebabs/dragonball-spring"
      }
    }
  }
}
