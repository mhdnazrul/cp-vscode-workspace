# Backup

The [backup.ps1](../scripts/backup.ps1) script creates a timestamped snapshot of your current VS Code settings.

## Usage

```powershell
.\scripts\backup.ps1
```

Dry run (preview without copying):

```powershell
.\scripts\backup.ps1 -WhatIf
```

## What Gets Backed Up

| File | Source |
|------|--------|
| `settings.json` | `%APPDATA%\Code\User\` |
| `keybindings.json` | `%APPDATA%\Code\User\` |
| `tasks.json` | `%APPDATA%\Code\User\` (if present) |
| `launch.json` | `%APPDATA%\Code\User\` (if present) |
| `extensions.txt` | Output of `code --list-extensions` |

## Backup Location

Backups are saved to `backups/YYYYMMDD_HHMMSS/` in the repo root:

```
backups/
├── 20260630_120000/
│   ├── settings.json
│   ├── keybindings.json
│   └── extensions.txt
└── 20260629_150000/
    ├── settings.json
    ├── keybindings.json
    └── extensions.txt
```

## Restore from a Backup

```powershell
Copy-Item -Path backups\20260630_120000\settings.json -Destination "$env:APPDATA\Code\User\settings.json"
```

Or use the [restore.ps1](../scripts/restore.ps1) script to re-apply repo settings.

## Automating Backups

Create a scheduled task (Windows):

```powershell
$action = New-ScheduledTaskAction -Execute "powershell.exe" `
  -Argument "-NoProfile -File C:\path\to\scripts\backup.ps1"
$trigger = New-ScheduledTaskTrigger -Daily -At 09:00
Register-ScheduledTask -TaskName "VS Code Backup" -Action $action -Trigger $trigger
```
