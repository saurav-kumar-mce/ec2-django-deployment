### Django App Deployment on AWS EC2 via Github-Actions

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

4. Add the following secrets to your GitHub repository:

   1.AWS_ACCESS_KEY_ID: AWS access key ID.

   2.AWS_SECRET_ACCESS_KEY: AWS secret access key.

   3.AWS_REGION: The AWS region in which you want to create the EC2 instance.

   4.TF_VAR_AMI: The ID of the Amazon Machine Image (AMI) that you want to use for the EC2 instance.

   5.TF_VAR_KEY_NAME: The name of the EC2 key pair that you want to use for the instance.

   6.EC2_INSTANCE_PRIVATE_KEY: The private key for the EC2 key pair that you want to use for the instance also be used for the ssh to ec2 instance via        github action workflow.


5.Commit and push the changes to the repository. The GitHub Action workflow will be triggered automatically.

# Workflow

The workflow consists of the following steps:

1.Checkout code from GitHub.

2.Install Terraform.

3.Initialize Terraform.

4.Plan Terraform.

5.Apply Terraform.

6.Get the public IP address of the EC2 instance.

7.Set the hostname of the EC2 instance.

8.Install Ansible on the EC2 instance.

9.Deploy Django app using Ansible.

10.Wait for Django app to become available.

# Notes

1. The devops directory contains the Terraform and Ansible code, as well as the configuration files for Nginx, Supervisor, and Gunicorn. The Terraform code is located in the devops/terraform directory, while the Ansible configuration files are located in the devops/ansible directory. The configuration files for Nginx, Supervisor, and Gunicorn are located in the devops directory.

1. The terraform apply command creates an EC2 instance and a security group. The security group allows incoming traffic on port 22 (SSH) and port 8000 (Django app).

2. The ansible-playbook command deploys the Django app to the EC2 instance and starts a Gunicorn server to serve the app.


Once the deployment process is completed successfully, you can access your Django app by visiting http://public-ip-address:8000/todos in your web browser.

 Cheers and Happy Coding :)
