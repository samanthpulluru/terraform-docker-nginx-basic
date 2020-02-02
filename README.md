# terraform-docker-nginx-basic
Creating an nginx container using terraform


This is a basic repo containing terraform configuration to generate a docker container running nginx.

If running on a local VM, terraform and docker should be pre-installed before creating and using the terraform config files.

Before using the config.tf file, make sure you edit the below parameters:

1) Replace the <docker-host:tcp-port> in the provider section with the tcp URL of the docker installation in your local machine.
2) In the resources section, under volumes, replace the <local-user-path> with the actual local user directory or the directory where you wish to store the artifacts, for ex: /usr/local/abcd (with abcd being the user name)
 

Once the config.tf file is ready, check the expected configuration (plan) by running 
$> terraform plan -out config.tfplan

Here, "-out" indicates terraform to write the output to config.tfplan file.

Output should indicate 2 new additions (A new image and a new docker instance). If so, proceed to applying the changes using:
$> terraform apply

This should return message indicating changes done.
