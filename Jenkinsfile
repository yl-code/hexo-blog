pipeline {
  agent any
  stages {
    stage('检出') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: env.GIT_BUILD_REF]], 
                                    userRemoteConfigs: [[url: env.GIT_REPO_URL, credentialsId: env.CREDENTIALS_ID]]])
      }
    }
    stage('构建') {
      steps {
        echo '构建中...'
        sh 'node -v'
        sh 'npm install -g hexo-cli' //安装hexo 脚手架
		sh 'npm install'
        echo '构建完成.'
        script {
          def exists = fileExists 'README.md'
          if (!exists) {
            writeFile(file: 'README.md', text: 'Helloworld')
          }
        }

        archiveArtifacts(artifacts: 'README.md', fingerprint: true)
      }
    }
    stage('测试') {
      steps {
        echo '单元测试中...'
		// 请在这里放置您项目代码的单元测试调用过程，例如:
        sh 'hexo clean' //清除缓存
        sh 'hexo g ' // 将 md 文件构建为 html 页面示例
        echo '单元测试完成.'
        writeFile(file: 'TEST-demo.junit4.AppTest.xml', text: '''
                    <
testsuite
name
=
"demo.junit4.AppTest"
time
=
"0.053"
tests
=
"3"
errors
=
"0"
skipped
=
"0"
failures
=
"0"
>
                        <
properties
>
                        </
properties
>
                        <
testcase
name
=
"testApp"
classname
=
"demo.junit4.AppTest"
time
=
"0.003"
/>
                        <
testcase
name
=
"test1"
classname
=
"demo.junit4.AppTest"
time
=
"0"
/>
                        <
testcase
name
=
"test2"
classname
=
"demo.junit4.AppTest"
time
=
"0"
/>
                    </
testsuite
>
                ''')
        junit '*.xml'
      }
    }
    stage('部署') {
      steps {
        echo '部署中...'
		// 请在这里放置收集单元测试报告的调用过程，例如:
        sh 'npm install' // 安装 deploy 脚手架
        sh 'hexo clean && hexo g' // 部署
        echo '部署完成'
      }
    }
  }
}