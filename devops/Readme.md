##  devops

This directory contains the Terraform code and Ansible playbooks to automate the deployment process for the Django app to an AWS EC2 instance.

# ansible

1.The ansible directory contains the following files:

playbook.yml: The Ansible playbook to deploy the Django app to the EC2 instance.

inventory.ini: The Ansible inventory file that specifies the host(s) on which the playbook will run.

# Terraform

The terraform directory contains the following files:

1. main.tf: Defines the AWS EC2 instance, security group,key pair resources, and Outputs the public IP address of the EC2 instance.

2. backend.tf: AWS s3 sync-up.

3. variables.tf: Defines the variables used in the Terraform code.

#  Configuration files

The config files contains the configuration files for the following components:

1. nginx.conf: The configuration file for the Nginx web server.

2. supervisor.conf: The configuration file for the Supervisor process control system.

3. gunicorn.service: The configuration file for the Gunicorn WSGI HTTP server.

# Notes

The ansible directory contains the playbook and roles needed to deploy the Django application on remote webservers. The playbook is defined in ansible/playbook.yml and includes the following roles:

├── ansible
  ├── inventory.ini 
│ ├── playbook.yml
│ ├── roles
│ │ ├── python
│ │ │ ├── tasks
│ │ │ │ └── main.yml
│ │ ├── nginx
│ │ │ ├── tasks
│ │ │ │ └── main.yml
│ │ ├── supervisor
│ │ │ ├── tasks
│ │ │ │ └── main.yml
│ │ ├── gunicorn
│ │ │ ├── tasks
│ │ │ │ └── main.yml
│ │ ├── handlers
│ │ │ ├── tasks
│ │ │ │ └── main.yml

1. python: Installs Python and pip on the remote webservers.

2. nginx: Configures Nginx as a reverse proxy for the Django app.

3. supervisor: Installs and configures Supervisor to manage the Gunicorn process.

4. gunicorn: Configures Gunicorn to run the Django app.

5. handlers: Defines handlers that can be used to restart services if configuration files change.

# Conclusion


The playbook specifies the remote webservers on which the application will be deployed and sets the become flag to true to become the root user on the webservers to run privileged tasks. The playbook also includes the roles required to deploy the Django application, defines handlers that can be used to restart services, and specifies the vars_files to load common variables and secret variables.

The roles directory contains the following subdirectories:

1. python: Contains the tasks to install Python and pip.

2. nginx: Contains the tasks to configure Nginx as a reverse proxy for the Django app.

3. supervisor: Contains the tasks to install and configure Supervisor to manage the Gunicorn process.
 
4. gunicorn: Contains the tasks to configure Gunicorn to run the Django app. 

5. handlers: Contains the handlers that can be used to restart services if configuration files change.

