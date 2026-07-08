resource "local_file" "my_pet" {
    filename = var.filename
    content = "My cat name is ${random_pet.petname.id}|" 
}
resource "random_pet" "petname" {
  prefix = "MR"
  separator = "."
  length = "1"
}
