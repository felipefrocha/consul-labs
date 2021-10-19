log_level = "info"

datacenter = "dc1"

bind_addr = "{{ GetInterfaceIP \"eth0\"}}"
client_addr = "0.0.0.0"

ports {
  grpc = 8502
  https = 8501
}

addresses {
  https = "0.0.0.0"
}

performance {
  raft_multiplier = 1
}

connect {
  enabled = true
}


telemetry {
  //dogstatsd_addr = "10.5.0.6:8125"
  disable_compat_1.9 = true
}

retry_join = ["server01", "server02", "server03"]

verify_incoming = true
verify_outgoing = true
verify_server_hostname = true

ca_file = "/etc/pki/consul-agent-ca.pem"
cert_file = "/etc/pki/dc1-client-consul-0.pem"
key_file = "/etc/pki/dc1-client-consul-0-key.pem"

encrypt = "HVFB5VgdX55Q6XyBTL9AmKkqssVnbdRaFSnXU5QdYv4="
