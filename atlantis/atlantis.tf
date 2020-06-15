module "atlantis" {
  source  = "terraform-aws-modules/atlantis/aws"
  version = "~> 2.0"

  name = "atlantis"

  # VPC
  cidr            = "10.20.0.0/16"
  azs             = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
  private_subnets = ["10.20.1.0/24", "10.20.2.0/24", "10.20.3.0/24"]
  public_subnets  = ["10.20.101.0/24", "10.20.102.0/24", "10.20.103.0/24"]

  # DNS (without trailing dot)
  route53_zone_name = "megunlabo.net"

  # ACM (SSL certificate) - Specify ARN of an existing certificate or new one will be created and validated using Route53 DNS
  #certificate_arn = aws_acm_certificate.cert.arn

  # Atlantis
  atlantis_github_user       = "megun-bot"
  atlantis_github_user_token = var.atlantis_github_token
  atlantis_repo_whitelist    = ["github.com/megun/*"]

  policies_arn = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
  ]

  allow_repo_config = "true"
}
