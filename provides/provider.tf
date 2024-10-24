variable "f1" {
  default = "abc71.txt"
  type    = string
}
variable "f2" {
  default = "this is first variable job"
}
variable "f3" {
  default = "xyz2.txt"
  type    = string
}
variable "f4" {
  default = "zzz.txt"
}
output "file_id" {
  value = local_file.file7.id
}

resource "local_file" "file7" {
  filename = var.f1
  content  = var.f2
}
resource "local_file" "file8" {
  filename = var.f3
  content  = var.f4
}

