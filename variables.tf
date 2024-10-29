### General Configs ###

variable "project_name" {
  description = "Nome do projeto"
  type        = string
}

variable "region" {
  description = "Região AWS onde os recursos serão criados."
  type        = string
}

### SSM VPC ###

variable "ssm_vpc_id" {
  description = "ID da VPC onde os recursos relacionados ao SSM serão criados."
  type        = string
}

variable "ssm_public_subnet_1" {
  description = "ID da primeira subnet pública na VPC para recursos SSM."
  type        = string
}

variable "ssm_public_subnet_2" {
  description = "ID da segunda subnet pública na VPC para recursos SSM."
  type        = string
}

variable "ssm_public_subnet_3" {
  description = "ID da terceira subnet pública na VPC para recursos SSM."
  type        = string
}

variable "ssm_private_subnet_1" {
  description = "ID da primeira subnet privada na VPC para recursos SSM."
  type        = string
}

variable "ssm_private_subnet_2" {
  description = "ID da segunda subnet privada na VPC para recursos SSM."
  type        = string
}

variable "ssm_private_subnet_3" {
  description = "ID da terceira subnet privada na VPC para recursos SSM."
  type        = string
}

### Balancer ###

variable "load_balancer_internal" {
  description = "Define se o Load Balancer deve ser interno (true) ou externo (false)."
  type        = bool
}

variable "load_balancer_type" {
  description = "Tipo de Load Balancer a ser criado ex: ('application' ou 'network')."
  type        = string
}

### ECS General ###

variable "nodes_ami" {
  description = "AMI a ser usada pelos nodes do cluster ECS."
  type        = string
}

variable "node_instance_type" {
  description = "Tipo de instância EC2 a ser usado pelos nodes do ECS."
  type        = string
}

variable "node_volume_size" {
  description = "Tamanho do volume, em GiB, a ser usado pelos nodes do ECS."
  type        = number
}

variable "node_volume_type" {
  description = "Tipo de volume EBS a ser usado pelos nodes do ECS ex: ('gp2', 'io1')."
  type        = string
}

variable "cluster_on_demand_min_size" {
  description = "Tamanho mínimo do cluster ECS para instâncias on-demand."
  type        = number
}

variable "cluster_on_demand_max_size" {
  description = "Tamanho máximo do cluster ECS para instâncias on-demand."
  type        = number
}

variable "cluster_on_demand_desired_size" {
  description = "Número desejado de instâncias on-demand no cluster ECS."
  type        = number
}

variable "cluster_spot_min_size" {
  description = "Tamanho mínimo do cluster ECS para instâncias spot."
  type        = number
}

variable "cluster_spot_max_size" {
  description = "Tamanho máximo do cluster ECS para instâncias spot."
  type        = number
}

variable "cluster_spot_desired_size" {
  description = "Número desejado de instâncias spot no cluster ECS."
  type        = number
}

variable "capacity_providers" {
  type = list(any)
  default = [
    "FARGATE", "FARGATE_SPOT"
  ]
}