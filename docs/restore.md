# Restore

The [restore.ps1](../scripts/restore.ps1) script applies the repo's configuration to your VS Code installation.

## Usage

```powershell
.\scripts\restore.ps1
```

Dry run (preview without copying):

```powershell
.\scripts\restore.ps1 -WhatIf
```

## What Gets Restored

| File | Source → Destination |
|------|---------------------|
| `settings.json` | `.vscode/settings.json` → VS Code user dir |
| `keybindings.json` | `.vscode/keybindings.json` → VS Code user dir |
| `tasks.json` | `.vscode/tasks.json` → VS Code user dir (if present) |
| `launch.json` | `.vscode/launch.json` → VS Code user dir (if present) |
| Extensions | Install from `.vscode/extensions.json` via `install-extensions.ps1` |

## Safety

Before overwriting, `restore.ps1` backs up any existing file:

```
%APPDATA%\Code\User\settings.json → %APPDATA%\Code\User\settings.json.backup
```

To undo, manually copy the `.backup` file back.

## After Restore

1. Restart VS Code or run `Developer: Reload Window`.
2. Verify settings via `Ctrl+Shift+P` → "Preferences: Open Settings (JSON)".
3. Test extensions: open a `.cpp` file and type `fastio` to trigger the snippet.

## Cross-Platform

`restore.ps1` targets Windows (`%APPDATA%\Code\User\`). On Linux/macOS, use [setup.sh](../scripts/setup.sh) instead:

```bash
./scripts/setup.sh
```
