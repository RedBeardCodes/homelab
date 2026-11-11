# Homelab

## Quick Start
From the root of the repo:
```shell
bash scripts/bootstrap.sh
source .venv/bin/activate
ansible-playbook -K ansible/site.yml
```

## Purpose
This project is to recreate the home lab environment from scratch.

### Assumptions
- Debian servers (currently using Trixie)
- Disks and user accounts fully provisioned
- Avahi installed and configured (optional for `.local` hostnames)
- Separate partition for GlusterFS/storage (default: `/dev/sda3`)

## Current tooling
- [K3s](ansible/roles/k3s/README.md)
- [GlusterFS](ansible/roles/gluster/README.md)

