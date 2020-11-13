# Structurizr action

*Rudimentary*, *aka* experimental, GitHub action *[that works]* to use the
[Structurizr CLI](https://github.com/structurizr/cli) in workflows.

## Inputs

The action is basic and, as inputs, accepts only a single parameter with the
arguments that must be passed to the Structurizr CLI.

### `args`

**Required** Arguments for Structurizr CLI.
See the [Structurizr CLI Usage](https://github.com/structurizr/cli#usage) for
further details.

## Example usage

In order to use this action in a GitHub workflow, you must add a step like the
one listed herein, customazing `name` and `args` according to your needs:

```yaml
    - name: Export Structurizr workspace
      uses: gilbertotcc/structurizr-action@v1
      with:
        args: 'export -workspace ./ -format json'
```
