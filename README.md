# consul-secure-docker

This repo gives you a fast way to spin up a 3-node Consul server cluster with **ACLs + TLS** turned on out of the box for testing.

The docker compose includes an init container that handles TLS creating before the Consul servers even start:

```bash
/bin/consul tls ca create &&
/bin/consul tls cert create -server -dc dc1
```
No manual CA or cert generation needed

Also it comes with a pre-generated bootstrap token sitting inside `acl.hcl`, so you can skip the whole consul acl bootstrap. Just `docker compose up` and you're good.

If you use Consul community edition, change to non-enterprise `hashicorp/consul:1.22.2`, and comment out the license option `license_path` in server configuration. Otherwise, drop your enterprise license into the directory.
