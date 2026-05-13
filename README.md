# homebrew-tap

Homebrew tap for `gumadeiras` tools.

## Install

```bash
brew tap gumadeiras/tap
brew install bdsc-cli
brew install flybase-cli
brew install flylight-cli
brew install gotrain-cli
brew install fruitmail-cli
brew install office-quotes-cli
brew install orthodb-cli
brew install roku-cli
brew install zot
brew install anovabar
brew install fruitloops
```

## fruitloops extras

`fruitloops` installs lightweight by default. Add bulk/live/plot Python
dependencies into the brewed virtualenv when needed:

```bash
fruitloops-install-extras
```

## Release automation

Upstream release workflows update formula URLs and checksums through
`scripts/update_formula.py`. Keep formula updates there instead of copying
one-off render scripts into each tool repo.

| Formula | Upstream repo | Release artifact used by automation |
| --- | --- | --- |
| `anovabar` | `gumadeiras/anovabar` | GitHub tag source archive |
| `bdsc-cli` | `gumadeiras/bdsc-cli` | GitHub release sdist |
| `flybase-cli` | `gumadeiras/flybase-cli` | GitHub release sdist |
| `flylight-cli` | `gumadeiras/flylight-cli` | GitHub release sdist |
| `fruitloops` | `gumadeiras/fruitloops` | GitHub release sdist |
| `fruitmail-cli` | `gumadeiras/fruitmail-cli` | GitHub release npm tarball |
| `gotrain-cli` | `gumadeiras/gotrain-cli` | GitHub release npm tarball |
| `office-quotes-cli` | `gumadeiras/office-quotes-cli` | GitHub release npm tarball |
| `orthodb-cli` | `gumadeiras/orthodb-cli` | GitHub release sdist |
| `roku-cli` | `gumadeiras/roku-cli` | GitHub release npm tarball |
| `zot` | `gumadeiras/zot` | GitHub tag source archive |
