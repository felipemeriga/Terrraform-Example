# Terraform : Infrastructure as code
Using terraform to create infrastrucutre on AWS using code. In this code, we are trying to create a below items:

1. VPC

2. Subnet inside VPC

3. Internet gateway associated with VPC

4. Route Table inside VPC with a route that directs internet-bound traffic to the internet gateway

5. Route table association with our subnet to make it a public subnet

6. Security group inside VPC for the public instance, for allowing traffic from public network

7. Key pair used for SSH access

8. EC2 instance inside our public subnet with an associated security group and generated a key pair

9. A private subnet where we will provision our private EC2 instance

10. A Security group for the private instance, to allow traffic only from the public instance

11. A NAT Gateway in the public subnet, for allowing the private instance to have internet connection

12. An elastic ip for the NAT Gateway

13. A route table to link the NAT Gateway between the private subnet

14. Private EC2 instance, where we can run a database our a private application

Using terraform we are able to make a immutable infrastructure which can be destroyed and created using single command.

Commands used:

terraform init : Initialize a Terraform working directory

terraform plan : Generate and show an execution plan

terraform apply : Builds or changes infrastructure

terraform destroy : Destroy Terraform-managed infrastructure

Variables are read from variables.tf file. If not specified in that file, parameters are read from following places : 

1. Command line flags

2. File named terraform.tfvars, if name is something else can be provided using command line flag

3. Environment variables

4. UI input (only supports String variables)

Terraform related details : https://www.terraform.io/intro/getting-started/install.html 
