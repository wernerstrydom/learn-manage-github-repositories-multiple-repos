resource "github_repository" "this" {
  for_each           = var.repositories
  name               = each.value.name
  description        = each.value.description
  visibility         = each.value.visibility
  auto_init          = true
  archive_on_destroy = true
}

resource "github_branch_default" "this" {
  for_each   = var.repositories
  repository = github_repository.this[each.key].name
  branch     = "main"
}


