variable "do_token" {
  type        = string
  sensitive   = true
  description = "Your DigitalOcean API Token."
}

variable "do_region" {
  type        = string
  default     = "sfo3"
  description = "The DigitalOcean region you would like to build this image in."
}

variable "do_size" {
  type        = string
  default     = "s-1vcpu-512mb-10gb"
  description = "The size of VM you want to build this image to use."
}

variable "do_image" {
  type        = string
  default     = "ubuntu-22-04-x64"
  description = "The image you would like to base your custom image off of."
}

variable "droplet_name" {
  type        = string
  default     = "kubeadm-base-packer"
  description = "The name you would like assigned to the droplet used for the creation of the image"
}

variable "tag" {
  type        = string
  default     = "kubeadm-base-packer"
  description = "The tag you would like applied to the droplet."
}