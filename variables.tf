variable "organization" {
  type = string
  description = "The name of the organization to create the repositories in"
}

variable "repositories" {
  type = map(object({
    name        = string
    description = string
    visibility  = string
  }))
}