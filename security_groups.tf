resource "aws_security_group" "sg_ssh" {
        name = "SG acceso SSH"
        description = "Permite el acceso SSH desde cualquier lugar"
        vpc_id = aws_vpc.vpc_clase.id

        tags = {
            Name = "SG_clase_acceso_SSH"
        }

        ingress {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "Permite acceso puerto 22"
        }

        egress {
            from_port = 0
            to_port = 0
            protocol = "-1"
            cidr_blocks = ["0.0.0.0/0"]
            description = "permite salida a cualquier ip y puerto"
        }
    }