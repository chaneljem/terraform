module "subnet_addrs" {
  source  = "hashicorp/subnets/cidr" #from hashicorp module registry
  version = "1.0.0"

  base_cidr_block = "10.0.0.0/22"
  networks = [
    {
      name     = "module_network_a"
      new_bits = 2
    },
    {
      name     = "module_network_b"
      new_bits = 2
    },
  ]
}

output "subnet_addrs" { #exports info that originates from that module and exports to CLI
  value = module.subnet_addrs.network_cidr_blocks
}