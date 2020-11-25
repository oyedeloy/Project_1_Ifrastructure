# Create EC2 instance
resource "aws_instance" "webserver" {
  ami                    = "ami-05a7feda58a4d7fd4"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = "devops-key2"
  vpc_security_group_ids = [aws_security_group.webserver_security.id]

  tags = {
    Name        = "webserver"
    provisioner = "Terraform"
  }
}
output "Webserver_ip" {
  value       = aws_instance.webserver.public_ip
  description = "The URL of the server instance."
}

resource "aws_instance" "Monitoring_node" {
  ami                    = "ami-0f9da58218dae37ed"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = "devops-key2"
  vpc_security_group_ids = [aws_security_group.monitor_Security.id]

  tags = {
    Name        = "Monitoring_node"
    provisioner = "Terraform"
  }


}

output "Monitoring_ip" {
  value       = aws_instance.Monitoring_node.private_ip
  description = "The URL of the server instance."
}


resource "aws_instance" "app_server1" {
  ami                    = "ami-07ca009d24d64cf9d"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet1.id
  key_name               = "devops-key2"
  vpc_security_group_ids = [aws_security_group.private_sub_security.id]

  tags = {
    Name        = "app_server1"
    provisioner = "Terraform"
  }
}

output "app_server1_ip" {
  value       = aws_instance.app_server1.private_ip
  description = "The URL of the server instance."
}

resource "aws_instance" "app_server2" {
  ami                    = "ami-07ca009d24d64cf9d"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet2.id
  key_name               = "devops-key2"
  vpc_security_group_ids = [aws_security_group.private_sub_security.id]

  tags = {
    Name        = "app_server2"
    provisioner = "Terraform"
  }
}
output "app_server2_ip" {
  value       = aws_instance.app_server2.private_ip
  description = "The URL of the server instance."
}

resource "aws_instance" "redis1" {
  ami                    = "ami-095c1dc13c630f1fe"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet1.id
  key_name               = "devops-key2"
  vpc_security_group_ids = [aws_security_group.private_sub_security.id]

  tags = {
    Name        = "redis1"
    provisioner = "Terraform"
  }
}
output "redis1_ip" {
  value       = aws_instance.redis1.private_ip
  description = "The URL of the server instance."
}

resource "aws_instance" "redis2" {
  ami                    = "ami-095c1dc13c630f1fe"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet1.id
  key_name               = "devops-key2"
  vpc_security_group_ids = [aws_security_group.private_sub_security.id]

  tags = {
    Name        = "redis2"
    provisioner = "Terraform"
  }
}
output "redis2_ip" {
  value       = aws_instance.redis2.private_ip
  description = "The URL of the server instance."
}

resource "aws_instance" "redis3" {
  ami                    = "ami-095c1dc13c630f1fe"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet2.id
  key_name               = "devops-key2"
  vpc_security_group_ids = [aws_security_group.private_sub_security.id]

  tags = {
    Name        = "redis3"
    provisioner = "Terraform"
  }
}
output "redis3_ip" {
  value       = aws_instance.redis3.private_ip
  description = "The URL of the server instance."
}

resource "aws_instance" "redis4" {
  ami                    = "ami-095c1dc13c630f1fe"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet2.id
  key_name               = "devops-key2"
  vpc_security_group_ids = [aws_security_group.private_sub_security.id]

  tags = {
    Name        = "redis4"
    provisioner = "Terraform"
  }
}
output "redis4_ip" {
  value       = aws_instance.redis4.private_ip
  description = "The URL of the server instance."
}

resource "aws_instance" "Infra_toolbox" {
  ami                    = "ami-0570e008991181708
"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = "devops-key2"
  vpc_security_group_ids = [aws_security_group.Tool_box_Security.id]

  tags = {
    Name        = "Infra_toolbox"
    provisioner = "Terraform"
  }
}
output "Infra_toolbox_ip" {
  value       = aws_instance.redis4.private_ip
  description = "The URL of the server instance."
}


