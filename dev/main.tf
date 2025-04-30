module "clustering" {
  source = "../module/eks"
  clustersg = var.clustersg
  vpcname = var.vpcname
  pubsub01 = var.pubsub01
  pubsub02 = var.pubsub02
  block1 = var.block1
  block2 = var.block2
  block3 = var.block3
  block4 = var.block4
  env = var.env
  clustername = var.clustername
}