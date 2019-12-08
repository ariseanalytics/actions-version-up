actions-version-up
===

GitHub Actions for updating Git tag version.

## Inputs

### `WHAT_TO_UPDATE`

Select what to update `major` or `minor` or `revision`(Default).

|WAT_TO_UPDATE|TAG|
|---|---|
|major|v1.2.3 --> v2.0.0|
|minor|v1.2.3 --> v1.3.0|
|revision|v1.2.3 --> v1.2.4|

If you haven't tagged yet, v0.0.1 will be added.

## Example usage

```yml
uses: koirand/github-action-tag@master
with:
  WHAT_TO_UPDATE: major
env:
  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }
```

Please refer to [example workflows](https://github.com/koirand/actions-version-up/tree/master/.github/workflows).
