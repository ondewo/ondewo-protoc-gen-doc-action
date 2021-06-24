# ondewo-protoc-gen-doc-action
Github action to generate documentation from *.proto files.

## Inputs

### `out-file`

The filename of the generated documentation. Default `doc`.

## Outputs

### `None`

## Example usage

```bash
uses: ondewo/ondewo-protoc-gen-doc-action@main
with:
  out-file: nlu
```
