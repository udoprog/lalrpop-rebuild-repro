# Reproducing a build issue with LALRPOP

To reproduce:

```bash
$> cargo build --manifest-path cli/Cargo.toml
$> cargo build --manifest-path parser/Cargo.toml
```

The `parser` module is already part of the `cli` build as a dependency, and should not be rebuilt.

Removing `parser/build.rs` after the initial run avoids this.
