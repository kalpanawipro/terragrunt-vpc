terraform {
  source = "git::git@gitlab.com:your-namespace/terraform-modules.git//vpc"
}

inputs = {
  vpc_id             = "vpc-0104148a60fece76e"  # Replace with your actual VPC ID
  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
}
