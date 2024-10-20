module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name                   = "go-web-app-cluster"
  cluster_version                = "1.31"

  cluster_endpoint_public_access = true

  vpc_id                         = "vpc-0dcc8a63cec3e6d8f"
  subnet_ids                     = ["subnet-0fd14e585fdfe27d7", "subnet-01c4a3f2b9d12b561", "subnet-0bbc7fe3dca60db7e"]
  control_plane_subnet_ids       = ["subnet-0fd14e585fdfe27d7", "subnet-01c4a3f2b9d12b561", "subnet-0bbc7fe3dca60db7e"]

  cluster_addons = {
    coredns                = {}
    eks-pod-identity-agent = {}
    kube-proxy             = {}
    vpc-cni                = {}
  }

  eks_managed_node_groups = {
    worker_nodes = {
      # Starting on 1.30, AL2023 is the default AMI type for EKS managed node groups
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = [var.instance_type]

      min_size     = 1
      max_size     = 3
      desired_size = 2
    }
  }
}
