# Withdata Homebrew Tap

Homebrew tap for installing [Withdata Software](https://www.withdata.com/) apps on macOS.

## Install

```bash
brew tap withdataio/tap
brew trust withdataio/tap          # Homebrew 5.0+: trust third-party cask taps
```

Then install any app by its cask name:

```bash
brew install --cask big-text-file-viewer
brew install --cask big-text-file-splitter
```

## Available casks

| Cask | App |
|---|---|
| `big-text-file-viewer` | BigTextFileViewer |

## Update

```bash
brew upgrade --cask <cask-name>
```

## Uninstall

```bash
brew uninstall --cask <cask-name>
brew untap withdataio/tap
```

Remove remaining preferences/config (optional):

```bash
brew uninstall --cask --zap <cask-name>
```
