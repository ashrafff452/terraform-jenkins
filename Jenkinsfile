pipeline {
    agent any
    stages {
        stage ('Git clone') {
            git branch: 'main',
            url: 'https://github.com/ashrafff452/terraform-jenkins.git'
        }
    }
    stage ('init') {
        steps {
            sh 'terraform init'
        }
    }
    stage ('plan') {
        steps {
            sh 'terraform plan'
        }
    }
    stage ('apply') {
        steps {
            sh 'terraform apply -auto-approve'
        }
    }
}
