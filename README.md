# Withdata Homebrew Tap

Homebrew tap for installing [BigTextFileViewer](https://www.withdata.com/big-text-file-viewer/) on macOS.

## Install

```bash
brew tap withdataio/tap
brew trust withdataio/tap          # Homebrew 5.0+: trust third-party cask taps
brew install --cask big-text-file-viewer
```

## Update

```bash
brew upgrade --cask big-text-file-viewer
```

## Uninstall

```bash
brew uninstall --cask big-text-file-viewer
brew untap withdataio/tap
```

Remove remaining preferences/config (optional):

```bash
brew uninstall --cask --zap big-text-file-viewer
```

## Available casks

| Cask | App |
|---|---|
| `big-text-file-viewer` | BigTextFileViewer |

## For maintainers

After building and uploading a new `.pkg`, update the cask with the
`scripts/update_cask.sh` script from the BigTextFileViewer project:

```bash
./scripts/update_cask.sh 3.1 3
```
