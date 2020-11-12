# Structurizr action

*Rudimentary* (aka experimental) GitHub action that allows the use of
[Structurizr CLI](https://github.com/structurizr/cli) in GitHub workflows.

## Inputs

### `args`

**Required** Arguments for Structurizr CLI.

### Outputs

The GitHub action is *WIP*.
More improvements will arrive as I or code contributors will work on them.

## Example usage

```yaml
uses: gilbertotcc/structurizr-action@main
with:
  args: 'export -workspace . -format json'
```
