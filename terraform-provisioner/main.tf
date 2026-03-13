resource "null_resource" "example" {

  provisioner "local-exec" {
    command = "echo Terraform Provisioner Example > provisioner.txt"
  }

}
