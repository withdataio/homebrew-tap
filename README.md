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
| `big-text-file-splitter` | BigTextFileSplitter |
| `big-text-file-viewer` | BigTextFileViewer |
| `data-file-converter` | DataFileConverter |
| `data-file-splitter` | DataFileSplitter |
| `db-blob-editor` | DBBlobEditor |
| `db-copier` | DBCopier |
| `db-loader` | DBLoader |
| `db-to-file` | DBToFile |
| `db-to-mongo` | DBToMongo |
| `excel-data-transformer` | ExcelDataTransformer |
| `file-to-db` | FileToDB |
| `file-to-mongo` | FileToMongo |
| `mongo-loader` | MongoLoader |
| `mongo-to-db` | MongoToDB |
| `mongo-to-file` | MongoToFile |
| `redis-data-studio` | RedisDataStudio |
| `sql-dump-splitter` | SQLDumpSplitter |
| `subtitle-converter` | SubtitleConverter |
| `tail4win` | Tail4win |
| `text-merger` | TextMerger |

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
