ARG UPSTREAM_VERSION
FROM ghcr.io/gnosischain/gbc-prysm-beacon-chain:${UPSTREAM_VERSION}

# Prysm launch chiado config
COPY chiado/config.yaml /usr/config.yaml
COPY chiado/genesis.ssz /usr/genesis.ssz
COPY jwtsecret.hex /jwtsecret
COPY entrypoint.sh /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]