node{
stage ('scm'){
 git 'https://github.com/singaravellu/assesment.git'
}
stage('build'){
 sh 'mvn clean package'
}
 stage ('building docker image'){
  echo "building image"
  sh 'docker build -t dockeriage/demo .'
 }
 stage ('pushing the docker image')
 {
  echo "pushing the docker image"
  sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u1g2q3f8'
  sh 'docker push public.ecr.aws/u1g2q3f8/dockeriage:latest'
  
 }
}
