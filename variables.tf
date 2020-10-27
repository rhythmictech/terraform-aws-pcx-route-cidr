variable "destination_cidr" {
  description = "CIDR to add to route tables"
  type        = string
}

variable "pcx_id" {
  description = "Peering Connection"
  type        = string
}

variable "route_table_count" {
  default     = null
  description = "How many route tables are going to be created?"
  type        = number
}

variable "route_tables" {
  description = "Route tables to install route in"
  type        = list(string)
}
