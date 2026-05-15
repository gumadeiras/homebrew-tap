# homebrew-tap

Homebrew tap for `gumadeiras` tools.

## Install

```bash
brew tap gumadeiras/tap
brew install bdsc
brew install flybase
brew install flylight
brew install fruitmail
brew install gotrain
brew install office-quotes
brew install orthodb
brew install roku
brew install zot
brew install anovabar
brew install fruitloops
```

Old `*-cli` formula names are aliases for the renamed formulas, so existing
install commands keep resolving while new installs should use the shorter names.

## fruitloops

`fruitloops` installs its Python runtime dependencies by default, including
bulk DuckDB, Arrow, live API, plotting, and pandas support.

The formula currently supports Apple Silicon macOS and x86_64 Linux. The
runtime dependency wheels are selected per platform during install.

## Release automation

Upstream release workflows update formula URLs and checksums through
`scripts/update_formula.py`. Keep formula updates there instead of copying
one-off render scripts into each tool repo.

| Formula | Upstream repo | Release artifact used by automation |
| --- | --- | --- |
| `anovabar` | `gumadeiras/anovabar` | GitHub tag source archive |
| `bdsc` | `gumadeiras/bdsc-cli` | GitHub release sdist |
| `flybase` | `gumadeiras/flybase-cli` | GitHub release sdist |
| `flylight` | `gumadeiras/flylight-cli` | GitHub release sdist |
| `fruitloops` | `gumadeiras/fruitloops` | GitHub release sdist |
| `fruitmail` | `gumadeiras/fruitmail-cli` | GitHub release npm tarball |
| `gotrain` | `gumadeiras/gotrain-cli` | GitHub release npm tarball |
| `office-quotes` | `gumadeiras/office-quotes-cli` | GitHub release npm tarball |
| `orthodb` | `gumadeiras/orthodb-cli` | GitHub release sdist |
| `roku` | `gumadeiras/roku-cli` | GitHub release npm tarball |
| `zot` | `gumadeiras/zot` | GitHub tag source archive |
