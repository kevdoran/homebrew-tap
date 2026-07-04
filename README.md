# 🍻 homebrew-tap
Homebrew formulae from kevdoran

- [kevdoran/projector](https://github.com/kevdoran/projector) (pj) - a CLI tool for creating projects from git worktrees

```bash
brew trust kevdoran/tap        # Homebrew 6+ requires it (skip on brew < 5.1.15)
brew install kevdoran/tap/pj   # adds the tap and installs pj
```

The `pj` formula builds from source on your machine (Homebrew installs `go` as a build dependency automatically).
