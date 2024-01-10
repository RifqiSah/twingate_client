# entrypoint.sh
#!/usr/bin/env bash

set -e

function main() {
    sudo twingate setup --headless service.key.json
    twingate start
}

main "$@"

/bin/bash