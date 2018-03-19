#!/usr/bin/env groovy

pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM',
                          branches: [[name: "origin/master"]],
                          doGenerateSubmoduleConfigurations: false,
                          extensions: [[$class: 'CloneOption', noTags: true, shallow: true]],
                          submoduleCfg: [],
                          userRemoteConfigs: [[url: 'https://github.com/cmestera/test-ruby', permissions: 'READABLE']]])
            }
        }

        stage('Configure') {
            steps {
                echo 'Installing gems...'
                sh '/bin/bash -l -c "bundle install"'
            }
        }

        stage('Test') {
            steps {
                echo 'Executing tests...'
                sh '/bin/bash -l -c "rspec spec"'

                //Archive the built artifacts
                archive (includes: 'pkg/*.gem')

                //Publish code coverage results
                publishHTML(
                        [allowMissing: false,
                         alwaysLinkToLastBuild: false,
                         keepAll: true,
                         reportDir: 'coverage',
                         reportFiles: 'index.html',
                         reportName: 'Simplecov Report',
                         reportTitles: ''])
            }
        }

    }

}
