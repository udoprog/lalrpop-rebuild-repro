#!/usr/bin/env bash

echo "$(date --rfc-email): Building A"
cargo build -v --manifest-path a/Cargo.toml
echo "$(date --rfc-email): Rebuilding A"
cargo build -v --manifest-path a/Cargo.toml

echo "$(date --rfc-email): Building B"
cargo build -v --manifest-path b/Cargo.toml
echo "$(date --rfc-email): Rebuilding B"
cargo build -v --manifest-path b/Cargo.toml
