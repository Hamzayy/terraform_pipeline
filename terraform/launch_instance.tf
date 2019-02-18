provider "aws" {
 access_key = "AKIAI265424UAPDYWYUA"
 secret_key = "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"
 region = "us-west-2"
}
resource "aws_instance" "terraform-test" {
 ami = "ami-032509850cf9ee54e"
 instance_type = "t2.micro"
 key_name = "myKeyPair"
 security_groups= ["NBS_SecurityGroup"]
 tags {
  Name = "terraform-instance"
 }
}