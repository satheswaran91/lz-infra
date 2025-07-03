package terraform.module_policy

deny[msg] {
  input.resource_type == "module"
  not startswith(input.source, "git::https://github.com/satheswaran91/lz-infra//modules/")
  msg = sprintf("Unauthorized module source: %s. Use CEAT-approved modules only.", [input.source])
}
