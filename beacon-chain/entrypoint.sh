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
  --http-web3provider=$HTTP_ENGINE \
  --p2p-tcp-port=$P2P_TCP_PORT \
  --p2p-udp-port=$P2P_UDP_PORT \
  --grpc-gateway-port=3500 \
  --grpc-gateway-corsdomain=$CORSDOMAIN \
  --accept-terms-of-use \
  --contract-deployment-block=$DEPLOYMENT_BLOCK \
  --config-file /usr/config.yaml \
  --chain-config-file /usr/genesis.ssz \
  --jwt-secret=/jwtsecret \
  --bootstrap-node=enr:-Ly4QBWdgA_Tt59pz3xeeMEIv9RXKjJn5pC4TiFxxmGcNrRAUTB5qVs6xTph7SLtLOPxlgn60mxaNyeAHc0inv1Zq40Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_LJMCJc2VjcDI1NmsxoQJW6aQs89Fzox8_YwwO1C-ubid5awCWhd8oUPP8s2VepYhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
  --bootstrap-node=enr:-Ly4QLtEwF2plyYK6wINg8p2cEvON5uxBRTGDjOVY-alCgBzfYoNqzAnYtMTRbH5iZgXAxAweh90i9FEtbN2OvhKZcMBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_LJ0qJc2VjcDI1NmsxoQLYBUr39uZ3zPfC9XK0f-g22J2Z8DF1Ax3e444dwUmy0ohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
  --bootstrap-node=enr:-Ly4QHyiqcUzJ4CtI6bhSTAZAD92UMEKwKCObZ-9hSZJAfgtXkj4JbAbhK33rXhqLFeO3isINvpPy_TUvoLB71__rOEBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_fJsSJc2VjcDI1NmsxoQJjSw3xd3o7Rj1DzE7Wxlr6mEbt5s2re4ANlP_TMDLmUohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
  --bootstrap-node=enr:-Ly4QN9Ro8-E9gyCCUuEYWlSwCbfzc2NkUGmN8YRDmg4K3rRP1FBiaDe9TWKVGaXhmb8F6qwYxW5h83hS6LjF8nJK34Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_fM6-Jc2VjcDI1NmsxoQNEtFv9oWxfpqPxFgpngTaWPHuGC6XEwaLdANypSZ-S2YhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
  --bootstrap-node=enr:-Ly4QMpHRs1843yWgB5yA2epcTBo4BrGrEB6b2fPAfxryjEEFzIUc_FOJ3b7r6h0bD_Gg-gCrX_mUgZZM8D7Xfot9J8Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhLymbsOJc2VjcDI1NmsxoQKhmKRn59_w2tt_KNQ2Jhj-F3b9hxRkFYdtW3IGgXm0oIhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
  --bootstrap-node=enr:-Ly4QO80ytPwEEXF0B6Nsnk6N-89SI3Ja-wvhnMwTgvAiKCMNvOfHwf3FbJtLvZpP7O2v4ztnpqbdYEXngvLzgDsvSEBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhI5dgFeJc2VjcDI1NmsxoQMwMSfNp9AUZNAgWzYDo2nI1KNHej3aB2NWt8j9awAlO4hzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
  --bootstrap-node=enr:-Ly4QAnBhPYD4_Cc3CyJhVqkLquWeGIY5xlKLhy9j_Bx845iNwSORtcXdLReWlK33PfqHTbqpsI-rm--egamtkrB7ywBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJO20mGJc2VjcDI1NmsxoQLhk56jmgLZTFopIhjoDlWpPiDjzLsrbnX7Z9iaOeg3PIhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
  --bootstrap-node=enr:-Ly4QNrYdrX4KY4tPgQKG3KcGySPE7QtpfFCGSujQUpQkErELFeDjuVWRzMxyyEQJTyVlTSPXxy4t9T2yrl4lBf5x8ABh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhI5dxlqJc2VjcDI1NmsxoQIzft6l-G1eo45O7v1eg0AZx4G-uwi4oGARFYQk1_vy5ohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
  --bootstrap-node=enr:-Ly4QEGDwovw841Etzs5wJquRZFMGPNNcKh6rqa5_BCI64NKYKOFjWTPh0nbwDBR7caIqEoDMKWBFzTTmqFKIQzjPpsBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhI5dfvaJc2VjcDI1NmsxoQLTtR9MTMMQxDXWi7Gn3ABZD-NMyIaq1HxUtcDrjM7qz4hzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
  $EXTRA_OPTS