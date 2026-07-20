resource "aws_instance" "ec2" {

  ami_id                    = var.ami_id

  instance_type          = var.instance_type

  tags = merge(
    var.tags,
    {
      Name = var.instance_name
    }
  )

}
