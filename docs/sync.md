# Settings Sync

This repo serves as the single source of truth for your VS Code configuration.

## How It Works

- The repo tracks settings, keybindings, extensions, snippets, profiles, and scripts.
- Changes are made locally, committed to git, and pushed/pulled across machines.
- No third-party sync service required.

## Workflow

### Pull Changes to a Machine

```bash
git pull
.\scripts\restore.ps1
```

### Push Local Changes

```bash
# After editing settings/snippets/profiles
git add .
git commit -m "update: description of change"
git push
```

Then pull and restore on other machines.

## What's Tracked

| Path | Contents |
|------|----------|
| `.vscode/settings.json` | Editor settings |
| `.vscode/keybindings.json` | Keyboard shortcuts |
| `.vscode/extensions.json` | Extension recommendations |
| `snippets/*.json` | Code snippets |
| `profiles/*.code-profile` | VS Code profiles |
| `scripts/*.ps1`, `scripts/setup.sh` | Automation |

## What's NOT Tracked

- VS Code's internal cache, workspace storage, or extension binaries.
- User-specific secrets or tokens (add these to `.gitignore`).

## Using VS Code Settings Sync

VS Code's built-in [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) can complement this repo:

- Use the repo for intentional, version-controlled changes.
- Use Settings Sync for rapid synchronization across machines.
- Be aware: Settings Sync may overwrite repo-managed files.

## Multi-Platform

Settings are written to be cross-platform. Platform-specific paths are handled by the setup scripts. If you need machine-specific overrides, use VS Code's workspace settings (`.vscode/settings.json` at the workspace level), which take precedence over user settings.
