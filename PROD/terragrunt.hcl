include {
  path = find_in_parent_folders()
}

dependency "vpc" {
  config_path = "../"
}

inputs = {
  public_subnet_ids      = dependency.vpc.outputs.public_subnet_ids
  private_subnet_ids     = dependency.vpc.outputs.private_subnet_ids
  public_route_table_id  = dependency.vpc.outputs.public_route_table_id
  private_route_table_id = dependency.vpc.outputs.private_route_table_id
  nat_gateway_ids        = dependency.vpc.outputs.nat_gateway_ids
}
