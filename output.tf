output "kms_arn" {
  value = aws_kms_key.sops.arn
}

output "sops_alias" {
  value = aws_kms_alias.sops.arn
}
