# 🍻 homebrew-tap
Homebrew formulae from kevdoran

- [kevdoran/projector](https://github.com/kevdoran/projector) (pj) - a CLI tool for creating projects from git worktrees

```bash
brew tap kevdoran/tap
brew trust kevdoran/tap  # Homebrew 6+ requires trusting third-party taps
brew install pj
```

The `pj` formula builds from source on your machine (Homebrew installs `go` as a build dependency automatically).
