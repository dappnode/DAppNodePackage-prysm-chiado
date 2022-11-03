#!/bin/bash

if [[ -n $WEB3_BACKUP ]] && [[ $EXTRA_OPTS != *"--fallback-web3provider"* ]]; then
  EXTRA_OPTS="--fallback-web3provider=${WEB3_BACKUP} ${EXTRA_OPTS}"
fi

exec -c beacon-chain \
  --datadir=/data \
  --rpc-host=0.0.0.0 \
  --grpc-gateway-host=0.0.0.0 \
  --monitoring-host=0.0.0.0 \
  --p2p-local-ip=0.0.0.0 \
  --execution-endpoint=$HTTP_ENGINE \
  --p2p-tcp-port=$P2P_TCP_PORT \
  --p2p-udp-port=$P2P_UDP_PORT \
  --grpc-gateway-port=3500 \
  --grpc-gateway-corsdomain=$CORSDOMAIN \
  --accept-terms-of-use \
  --chain-config-file /usr/config.yaml \
  --genesis-state=/usr/genesis.ssz \
  --jwt-secret=/jwtsecret \
  --bootstrap-node=enr:-MK4QNgIU4AT5AW0G0ldawIM2lYTX-gfNhZS4P8lIIuUQ8gUFjiAmT1P3tvAhTJx9y_UhfmEIqr4TYp0XcBtyXXN30-GAYOp2xB9h2F0dG5ldHOIAAAAAAAAAACEZXRoMpBI6hZ8AQAAb1oAAAAAAAAAgmlkgnY0gmlwhIuQGlWJc2VjcDI1NmsxoQK6lyw9lNfW6JWN-4oTYYa1gJpcELc31R7pxWudCp8vsIhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA== \
  $EXTRA_OPTS
