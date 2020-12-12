node{
stage ('scm'){
 git 'https://github.com/singaravellu/assesment.git'
}
stage('build'){
 sh 'mvn clean package'
}
 stage ('building docker image'){
  echo "building image"
  sh 'docker build -t dockersing/demo ."
 }
}
