# ondewo-protoc-gen-doc-action

Github action to generate documentation from *.proto files.

## Inputs

### `formats`

Comma-separated list of documentation format. Default `html,md`.

### `filename`

The filename of the generated documentation. Default `index`.

## Outputs

### `None`

## Example usage

```bash
uses: ondewo/ondewo-protoc-gen-doc-action@main
with:
  format: html
  filename: nlu
```
