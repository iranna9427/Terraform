resource "local_file" "file10" {
  filename = "a1"
  content  = var.numbervar
}
resource "local_file" "file11" {
  filename = "a2"
  content  = var.boolvar
}

resource "local_file" "file12" {
  filename = "a3"
  content  = var.stringvar
}
resource "local_file" "file13" {
  filename = "a4"
  content  = var.anyvar
}

resource "local_file" "file14" {
  filename = "a5"
  content  = var.listvar[0]
}

resource "local_file" "file18" {
  filename = "a7"
  content  = var.tuplevar[2][1]
}

