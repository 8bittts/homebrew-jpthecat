<div align="center">
  <img src="https://jpthecat.com/jpthecat-logo.png" alt="JP the Cat logo" width="112" height="112">

# JPtheCat Homebrew Tap

### The cat that counts your agent tokens.

Install JP the Cat with Homebrew and get the same signed, notarized DMG served by
[JPtheCat.com](https://jpthecat.com).

</div>

---

## Install

```sh
brew tap 8bittts/jpthecat
brew trust 8bittts/jpthecat
brew install --cask jpthecat
```

Homebrew asks you to trust third-party cask taps before installing apps from them.
Trusting this tap tells Homebrew you intentionally want JP's cask from
`8bittts/homebrew-jpthecat`.

## What You Get

- The current JPtheCat stable DMG from `https://api.jpthecat.com`.
- Developer ID signing and Apple notarization.
- Sparkle updates after install.
- The same app as the primary download at `https://jpthecat.com/download`.

## Verify

```sh
brew info --cask 8bittts/jpthecat/jpthecat
```

The version and SHA in `Casks/jpthecat.rb` are updated by the JPtheCat release script
whenever a new stable DMG ships.

## Update

```sh
brew update
brew upgrade --cask jpthecat
```

JP also updates herself through Sparkle, so Homebrew is an install path, not a
separate product channel.

## Uninstall

```sh
brew uninstall --cask jpthecat
brew untap 8bittts/jpthecat
```

## Links

- Website: https://jpthecat.com
- Download: https://jpthecat.com/download
- Stable manifest: https://jpthecat.com/stable/version.json
