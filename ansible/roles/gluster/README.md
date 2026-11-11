# GlusterFS Role

## Purpose
To provide clustered storage for applications within the home lab environment.

## Assumptions
The Gluster device is `/dev/sda3` by default.

## Defaults
The GlusterFS role defines the following variables with their defaults:

```yaml
gluster:
  brick:
    device: sda3             # the gluster device
    filesystem: ext4         # the filesystem type, typically ext4 or xfs
    mount: /data             # location to mount /dev/sda3
    dir: /data/brick/vol1    # location for the brick device
  volume:
    name: gluster_vol        # name of the volume
    replicas: 3              # number of replicas, make this equal to the number of gluster hosts in inventory
    mount: /shared           # location for replicated data
    transport: tcp           # tcp should be then only option, kept configurable in case it ever changes
```

## Inventory required
In the inventory, there should be a `[gluster]` defined. For my purposes, I defined it as `[gluster:children]` and included all of my home lab hosts via my main group. An example would look like this:

```ini
[gluster:children]
my_hosts
```
