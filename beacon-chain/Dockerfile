ARG UPSTREAM_VERSION
FROM ghcr.io/gnosischain/gbc-prysm-beacon-chain:${UPSTREAM_VERSION} as base



FROM debian:bullseye-slim 

RUN apt update && \
    apt install ca-certificates file --yes && \
    rm -rf /var/lib/apt/lists/*

# Get the binary from the base image
COPY --from=base /app/cmd/beacon-chain/beacon-chain /usr/local/bin/beacon-chain

# Prysm launch chiado config
COPY chiado/config.yaml /usr/config.yaml
COPY chiado/genesis.ssz /usr/genesis.ssz
COPY jwtsecret.hex /jwtsecret
COPY entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/beacon-chain && \
    chmod +x /usr/local/bin/entrypoint.sh 

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

