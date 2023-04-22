resource "aws_instance" "myec2" {
    ami                     = var.myimage
    instance_type           = "t2.micro"
    key_name                = "linux-php-mumbai"
    user_data               = "${file("install_nginx.sh")}"
    user_data_replace_on_change = "true"
    tags = {
        Name = "EC2_nginx"
    }                  
}