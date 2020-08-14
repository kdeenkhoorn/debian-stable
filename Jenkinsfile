pipeline {

    agent {
        label 'armhf'
    }

    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5')
    }

    triggers {
        GenericTrigger (
            causeString: 'Push by: $ACTOR on Ref: $REF',
            genericVariables: [
                [defaultValue: '', key: 'ACTOR', regexpFilter: '', value: '$.pusher.username'],
                [defaultValue: '', key: 'REF', regexpFilter: '', value: '$.ref'],
            ],
            regexpFilterExpression: '',
            regexpFilterText: '',
            token: '1612d51ccb91ad61b7345e56f4f5a8b4d0070b06' )
    }

    stages {
        stage ('Build stable base image') {
            steps {
                /* Build stable base image */
                sh './create_image.sh'
            }
        }
        stage ('Publish stable base docker image to Docker Hub') {
            steps {
                /* Docker push buildresult to Docker Hub*/
                withDockerRegistry(credentialsId: 'dockerhubaccount', url: '') {
                    sh "docker push kdedesign/debian-stable:latest"
                }
            }
        }
    }
}
