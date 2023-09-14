# Packer Kubeadm Base
A simple example Packer script to create an image that can act as a "base" for a Kubeadm Kubernetes Cluster.
# Setup and Usage
1. [Install Packer](https://developer.hashicorp.com/packer/downloads?ajs_aid=65d742e0-79c6-4d6d-b939-db0e65a95353&product_intent=packer)
2. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible)
3. Clone this repository
    - `git clone git@github.com:Raveshaww/packer-kubeadm-base.git`
4. Enter the repo directory with `cd packer-kubeadm-base`
5. Run `packer init kubeadm-base.pkr.hcl` to download the relevant plugins
6. Run `cp values/copy-values.pkr.hcl values/values.pkr.hcl`
7. Populate the variables in `values/values.pkr.hcl` with the relevant data
    - Additional information about the variables can be found in `variables.pkr.hcl`
8. Build the image with `packer build -var-file="values/values.pkr.hcl" .`
# General Notes
- The Ansible Playbook used in this example has only been tested against Ubuntu 22.04