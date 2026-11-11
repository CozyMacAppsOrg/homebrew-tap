# CozyMacApps Homebrew tap

Homebrew casks for [CozyMacApps](https://cozymacapps.com).

```bash
brew tap cozymacappsorg/tap
brew trust cozymacappsorg/tap      # Homebrew only loads casks from taps you trust
brew install --cask cozyzip
```

| Cask | App |
|---|---|
| `cozyzip` | [CozyZip](https://cozymacapps.com/cozyzip/): preview, extract and create archives safely. Installs the app and the `cozyzip` command-line tool. |

CozyZip updates itself through **Check for Updates…**, so `brew upgrade` leaves it alone unless you run `brew upgrade --greedy`. `brew uninstall --zap --cask cozyzip` also removes CozyZip's settings and caches; your licence, which is shared by every CozyMacApps app, stays.

## Updating a cask (maintainers)

Each CozyZip release changes `version` and `sha256` in `Casks/cozyzip.rb`. The SHA-256 is the published `CozyZip-<version>.dmg.sha256` on cozymacapps.com. Check with:

```bash
brew style Casks/cozyzip.rb
brew audit --cask --strict --online cozymacappsorg/tap/cozyzip
```
