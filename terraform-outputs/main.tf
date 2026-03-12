resource "local_file" "example" {
  filename = "output.txt"
  content  = "Terraform output example"
}

output "file_name" {
  value = local_file.example.filename
}
