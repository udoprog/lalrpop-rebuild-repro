# Reproducing a build issue with LALRPOP

To reproduce:

```bash
$> cargo build --manifest-path a/Cargo.toml
$> cargo build --manifest-path b/Cargo.toml
```

The `b` module is already part of the `a` build as a dependency, and should not be rebuilt.

Also see [`run-tests.sh`](run-tests.sh) for a convenient way to reproduce the test above.
