
# Twingate Docker Client
A Docker container for connecting to Twingate using Twingate Client

# Purpose
This allow your server to connect to private resources using Twingate [Services](https://docs.twingate.com/docs/services). Services in Twingate allow applying zero trust permissions to automated components of your network infrastructure. For more information, see our [product announcement](https://www.twingate.com/blog/ztna-infra-automation/).

# Config
```json
{
  "version": "",
  "network": "yournetwork.twingate.com",
  "service_account_id": "YOURACCOUNTID",
  "private_key": "YOURPRIVATEKEY",
  "key_id": "YOURKEYID",
  "expires_at": null,
  "login_path": "/api/v4/headless/login"
}
```
Change your service config from [Services](https://docs.twingate.com/docs/services).

# Usage
```yml
version: "3"
  services:
    twingate_client:
    image: rifqisah/twingate_client:latest
    container_name: twingate_client
    stdin_open: true
    tty: true
    devices:
    - /dev/net/tun
    cap_add:
    - NET_ADMIN
    network_mode: host
    volumes:
    - ./service.key.json:/twingate/service.key.json:ro
```