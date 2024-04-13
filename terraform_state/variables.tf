variable "bucket" {
  type        = string
  description = "bucket名"
}

variable "prevent_destroy" {
  type        = bool
  default     = true
  description = "bucketの削除不可設定"
}

variable "versioning_enable" {
  type        = string
  default     = "Enabled"
  description = "tfstateバケットのバージョニングの有無"
}

variable "sse_algorithm" {
  type        = string
  default     = "AES256"
  description = "tfstateバケットの暗号化アルゴリズム"
}

variable "lock_table" {
  type        = string
  description = "terraformの排他制御を行うDynamoDBのテーブル名"
}
