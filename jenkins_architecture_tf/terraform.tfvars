#Provisioner
df_region               = "us-east-1"
access_key              = ""
secret_key              = ""

#Network
df_cidr_block_anywhere          = "0.0.0.0/0"
vpc_cidr_block                  = "10.0.0.0/16"
subnet_cidr_block_a             = "10.0.1.0/24"
subnet_cidr_block_b             = "10.0.2.0/24"
subnet_cidr_block_a_private     = "10.0.3.0/24"
subnet_cidr_block_b_private     = "10.0.4.0/24"
availability_zone_a             = "us-east-1a"
availability_zone_b             = "us-east-1b"
public_ip                       = "true"

#Instance
ec2_ami_id              = "ami-053b0d53c279acc90"
ec2_instance_type       = "t2.medium"
ec2_instance_tag_1      = {Name = "DP9_Jenkins_Controller"}
ec2_instance_tag_2      = {Name = "DP9_Terraform_Agent"}
ec2_instance_tag_3      = {Name = "DP9_Docker_Instance"}
ec2_instance_tag_4      = {Name = "DP9_Kubernetes_Instance"}
ud_jenkins              = "ud_scripts/ud_jenkins.sh"
ud_docker               = "ud_scripts/ud_docker.sh"
key_name                = "dp6_kp"

#Ports
ssh_access = {
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

jenkins_access = {
  from_port   = 8080
  to_port     = 8080
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

http_access = {
  from_port   = 8000
  to_port     = 8000
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

anywhere_outgoing = {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}
