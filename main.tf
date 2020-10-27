locals {
  route_table_count = coalesce(
    var.route_table_count,
    length(distinct(var.route_tables))
  )
}

resource "aws_route" "pcx_route_cidr" {
  count                     = local.route_table_count
  destination_cidr_block    = var.destination_cidr
  route_table_id            = element(distinct(var.route_tables), count.index)
  vpc_peering_connection_id = var.pcx_id
}
