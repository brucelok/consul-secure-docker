node_name = "consul-server3"

server = true

log_level = "DEBUG"

ui_config {
  enabled = true
}

data_dir = "/consul/data"

addresses {
  http  = "0.0.0.0"
  https = "0.0.0.0"
}

retry_join = [
  "consul-server2",
  "consul-server3"
]

ports {
  https = 8501
}

connect {
  enabled = true
}

encrypt = "aPuGh+5UDskRAbkLaXRzFoSOcSM+5vAK+NEYOWHJH7w="

tls {
  defaults {
    verify_incoming        = true
    verify_outgoing        = true
    verify_server_hostname = true
    ca_file                = "/consul/config/certs/consul-agent-ca.pem"
    cert_file              = "/consul/config/certs/dc1-server-consul-0.pem"
    key_file               = "/consul/config/certs/dc1-server-consul-0-key.pem"
  }
}

auto_encrypt {
  allow_tls = true
}

license_path = "/consul/config/license.hclic"
