resource "aws_ssm_parameter" "atlantis_github_token" {
  name        = "/atlantis/github/token"
  description = "The parameter description"
  type        = "SecureString"
  value       = var.atlantis_github_token
}
