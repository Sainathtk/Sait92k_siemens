pipeline {
    agent any
    environment {
        SUBNET_ID = "${terraform output private_subnet_id}"  // Capture subnet ID from Terraform output
    }
    stages {
        stage("TF Init") {
            steps {
                echo "Executing Terraform Init"
                sh 'terraform init'
            }
        }
        stage("TF Validate") {
            steps {
                echo "Validating Terraform Code"
                sh 'terraform validate'
            }
        }
        stage("TF Plan") {
            steps {
                echo "Executing Terraform Plan"
                sh 'terraform plan'
            }
        }
        stage("TF Apply") {
            steps {
                echo "Executing Terraform Apply"
                sh 'terraform apply -auto-approve'
            }
        }
        stage("Invoke Lambda") {
            steps {
                echo "Invoking your AWS Lambda"
                sh 'aws lambda invoke --function-name MyLambdaFunction --log-type Tail lambda_response.json'
                sh 'base64 -d lambda_response.json'
            }
        }
    }
}
