module "ecr-repo" {
  source           = "./../resources"
  ecr_name         = var.ecr_name
  tags             = var.tags
  image_mutability = var.image_mutability

}
