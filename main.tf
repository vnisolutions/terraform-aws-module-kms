### ------------------------------------------------------------------------
# Key encrypt secrets
### ------------------------------------------------------------------------

resource "aws_kms_key" "sops" {
  description             = "KMS Key for sops"
  deletion_window_in_days = 10
}

resource "aws_kms_alias" "sops" {
  name          = "alias/sops"
  target_key_id = aws_kms_key.sops.key_id
}
