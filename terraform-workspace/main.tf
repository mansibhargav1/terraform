resource "local_file" "example"{
filename = "${terraform.workspace}.txt"
content = "this is file conetct of ${terraform.workspace} env"
}
