provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_instance" "ex" {
    ami           = "ami-011ad87c8c935c1b9"
    instance_type = "t2-micro"

    tags = {
        Name = "MyEC2"
    }
}

output "public-ip" {
    value = aws_instance.ex.public_ip
}