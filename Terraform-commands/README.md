## Terraform core commands

### Initialize Terraform
terraform init - initialize the backend which is the storage location for your state files and terraform downloads and installs the necessary provider's plugins and modules.

### Terraform Validate
terraform validate - validate your configuration files 

### Terraform Plan to Verify what it is going to create / update / destroy
terraform plan - generates an execution plan based on your configuration files and displays what is to be deployed

### Terraform Apply
terraform apply - commission defined resources based on your current state of your infrastructure with the desired state defined in your configuration and creates, modifies or deletes as necessary.
