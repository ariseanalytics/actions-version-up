actions-version-up
===

GitHub Actions for updating Git tag version.

## Inputs

### `WHAT_TO_UPDATE`

Select what to update `major` or `minor` or `revision`(Default).

## Example usage

```yml
uses: koirand/github-action-tag@master
with:
  WHAT_TO_UPDATE: major
env:
  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }
```

Please refer to [example workflows](https://github.com/koirand/actions-version-up/tree/master/.github/workflows).
