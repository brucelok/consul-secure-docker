node_name = "consul-client1"

data_dir = "/consul/data"

log_level = "DEBUG"

retry_join = [
  "consul-server1",
  "consul-server2",
  "consul-server3"
]

encrypt = "aPuGh+5UDskRAbkLaXRzFoSOcSM+5vAK+NEYOWHJH7w="

tls {
  defaults {
    verify_incoming        = true
    verify_outgoing        = true
    verify_server_hostname = true
    ca_file                = "/consul/config/certs/consul-agent-ca.pem"
  }
}

auto_encrypt {
  tls = true
}