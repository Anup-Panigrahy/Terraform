provider "aws"{
    region="ap-south-1"
}

resource "aws_db_instance" "default" {
       allocated_storage = 100
       engine = "mysql"
       engine_version = "8.0.35"
       db_name = "mysqldb"
       instance_class = "db.t4g.micro"
       username = "admin"
       password = "admin1234"
       skip_final_snapshot = true

}
