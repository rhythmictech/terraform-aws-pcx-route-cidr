resource "aws_route" "pcx_route_cidr" {
  count                     = length(distinct(var.route_tables))
  destination_cidr_block    = var.destination_cidr
  route_table_id            = element(distinct(var.route_tables), count.index)
  vpc_peering_connection_id = var.pcx_id
}
