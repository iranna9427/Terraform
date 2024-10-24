variable "numbervar" {
  default = 12
  type    = number
}
variable "boolvar" {
  default = true
  type    = bool
}

variable "stringvar" {
  default = "abc"
  type    = string
}

variable "anyvar" {
  default = "abc"
  type    = any
}

variable "listvar" {
  type    = list(string)
  default = ["adi", "patta"]
}

variable "listvar1" {
  type    = list(any)
  default = ["adi", 122, "true"]
}

variable "mapvar" {
  type = map(string)
  default = {
    name  = "iranna"
    id    = "123"
    phone = "12334"
  }
}

variable "tuplevar" {
  type    = tuple([string, number, list(any)])
  default = ["adi", 1244, ["a", 1]]
}

