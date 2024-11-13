# Specify the provider
provider "aws" {
  region = "ap-southeast-1"  # Modify to your preferred region
}

# Define the EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-08f49baa317796afd"  # Replace with the latest Amazon Linux AMI
  instance_type = "t2.micro"
}

# Output the instance ID
output "instance_id" {
  value = aws_instance.example.id
}

