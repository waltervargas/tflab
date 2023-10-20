data "external" "example" {
  program = ["bash","${path.module}/env_to_json.sh"]
}

output "custom_output" {
  value = data.external.example.result
}
