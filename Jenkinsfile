pipeline {
    agent {
        label "node-10"
    }
    stages  {
        stage("检出") {
            steps {
                sh 'ci-init'
                checkout(
                  [$class: 'GitSCM', branches: [[name: env.GIT_BUILD_REF]], 
                  userRemoteConfigs: [[url: env.GIT_REPO_URL]]]
                )
            }
        }
        stage("建构") {
            steps {
                sh 'node -v'
                sh 'npm install hexo-cli -g'
                sh 'npm install '
                sh 'hexo clean && hexo g'
                archiveArtifacts artifacts: '**/public/', fingerprint: true // 收集构建产物
            }
        }
    }
}