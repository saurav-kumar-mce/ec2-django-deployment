# BoilerPlate Of Automated Django-App Deployment.

To automate the deployment process for the Django projects, I've created a Github Action workflow that will deploy the Django-app to an AWS EC2 instance using Ansible.

Prerequisites:

1.GitHub account
2.AWS account
3.Ansible
4.Terraform

# Setup

1. Create an EC2 instance using Terraform: The workflow will trigger Terraform code located in the devops/terraform directory to create an EC2 instance on AWS. Before proceeding with the deployment, ensure that you have set up the AWS credentials with appropriate permissions to create and manage the EC2 instance.

2. Set up AWS credentials: You can create an IAM user and generate an access key and secret access key. These credentials will be used by Terraform and Ansible to access your AWS account and deploy your Django app.

3. Install Terraform: You need to install Terraform on your local machine to run the Terraform code and create the EC2 instance on AWS.
 You can find the installation guide on the official Terraform website.
https://developer.hashicorp.com/terraform/downloads?product_intent=terraform