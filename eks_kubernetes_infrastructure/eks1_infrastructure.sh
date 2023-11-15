#Deploy 2 public subnets, 2 private subnets, nat gateway, igw, ect.... in  vpc
#Make sure theres a Nat Gateway & a public ip is enabled for the public subnets

#Install and configure Kubernets/EKS
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin

#Check if its installed
eksctl version 

#Create & check cluster
eksctl create cluster cluster03  --vpc-private-subnets=subnet-02d86c9ea286e343b,subnet-02825fc3bf3076539  --vpc-public-subnets=subnet-0f99eb3c8aaa33dfd,subnet-014e8e3336bd05060 --without-nodegroup
eksctl create nodegroup --cluster cluster03 --node-type t2.medium --nodes 2
eksctl create nodegroup --cluster cluster03 --name dp9backend --node-type t2.medium --nodes 2 --node-private-networking --subnet-ids subnet-02d86c9ea286e343b,subnet-02825fc3bf3076539
kubectl config get-contexts
