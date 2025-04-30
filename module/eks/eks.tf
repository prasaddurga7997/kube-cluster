resource "aws_eks_cluster" "global-cluster" {
  name     = var.clustername
  role_arn = aws_iam_role.eks_cluster_role.arn
  version = "1.31"

  vpc_config {
    subnet_ids = [aws_subnet.pubsub01.id, aws_subnet.pubsub02.id]
  }
  depends_on = [
  aws_iam_role.eks_cluster_role
  ]
  tags = {
    Name = "clustertype"
    Environment = var.env
  }
}