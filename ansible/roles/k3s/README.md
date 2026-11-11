# K3s Role

## Purpose
To provide a common substrate on which to run applications in the home lab.

## Assumptions
For now, FluxCD will be bootstrapped into the k3s cluster manually after cluster init.

## Defaults
The defaults are the "out of the box" versions from Rancher, with the additional SANs of the hostname and IP from the first host in inventory.

## Inventory required
In the inventory, there should be a `[k3s]` defined. For my purposes, I defined it as `[k3s:children]` and included all of my home lab hosts via my main group. An example would look like this:

```ini
[k3s:children]
my_hosts
```
