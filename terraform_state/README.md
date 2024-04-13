<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.terraform_locks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_s3_bucket.terraform_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.terraform_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.terraform_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.terraform_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket"></a> [bucket](#input\_bucket) | bucket名 | `string` | n/a | yes |
| <a name="input_lock_table"></a> [lock\_table](#input\_lock\_table) | terraformの排他制御を行うDynamoDBのテーブル名 | `string` | n/a | yes |
| <a name="input_prevent_destroy"></a> [prevent\_destroy](#input\_prevent\_destroy) | bucketの削除不可設定 | `bool` | `true` | no |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | tfstateバケットの暗号化アルゴリズム | `string` | `"AES256"` | no |
| <a name="input_versioning_enable"></a> [versioning\_enable](#input\_versioning\_enable) | tfstateバケットのバージョニングの有無 | `string` | `"Enable"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket"></a> [bucket](#output\_bucket) | S3Bucket |
| <a name="output_bucket_arm"></a> [bucket\_arm](#output\_bucket\_arm) | S3Bucket ARM |
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | S3Bucket ID |
<!-- END_TF_DOCS -->
