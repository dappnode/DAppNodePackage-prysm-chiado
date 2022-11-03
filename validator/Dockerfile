
ARG UPSTREAM_VERSION
FROM gnosischain/prysm-validator:v3.0.0-pre-1-chiado as config 
#${UPSTREAM_VERSION}
FROM debian:bullseye-slim 

RUN apt-get update && apt-get install -y ca-certificates file curl jq unzip zip && \
    rm -rf /var/lib/apt/lists/*

# Get the binary from the base image
COPY --from=config /app/cmd/validator/validator.runfiles/prysm/cmd/validator/validator_/validator /usr/local/bin/validator

# Prysm scripts
COPY auth-token /auth-token
COPY chiado/config.yaml /usr/config.yaml
COPY chiado/genesis.ssz /usr/genesis.ssz
COPY ./entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/validator && \
    chmod +x /usr/local/bin/entrypoint.sh 

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

