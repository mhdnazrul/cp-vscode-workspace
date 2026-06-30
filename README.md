# Competitive Programming Workspace

[![VS Code](https://img.shields.io/badge/VS%20Code-1.90%2B-007ACC?logo=visual-studio-code)](https://code.visualstudio.com/)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

A ready-to-use VS Code configuration optimized for **Competitive Programming** with C++, Python, JavaScript, and TypeScript. Includes fast I/O templates, debugging setup, build tasks, test case management, and code snippets.

## Features

- **Competitive Programming** — C++ template with fast I/O, debug macro, modular arithmetic, and test-case loop
- **Code Runner** — One-click execution for C++, Python, JS, TS
- **Debugging** — gdb/lldb (C++) and Python debugger configs with preLaunchTask
- **Build Tasks** — Compile C++ with `-O2 -Wall -DLOCAL`, run with input redirection
- **Test Cases** — Input/output file management, diff checking, stress testing scripts
- **Snippets** — 49 snippets across C++ (12), Python (10), JavaScript (8), TypeScript (8), Markdown (11)
- **Profiles** — CP, Python, Web, Minimal — import what you need
- **Backup & Restore** — PowerShell scripts for timestamped backups and one-command restore
- **Settings Sync** — Git-based multi-machine sync via this repo

## Quick Start

```bash
git clone https://github.com/mhdnazrul/awesome-vscode-setup.git
cd awesome-vscode-setup

# Windows
.\scripts\install-extensions.ps1
.\scripts\restore.ps1

# Linux/macOS
chmod +x scripts/setup.sh && ./scripts/setup.sh
```

Open VS Code, create a `.cpp` file, type `fastio` + Tab, press `Ctrl+Alt+N` to run.

## Screenshots

![Editor with Andromeda theme](https://github.com/user-attachments/assets/d48619d7-92fb-4574-842f-ce6a4363c399)

## Repository Structure

| Path | Contents |
|------|----------|
| `.vscode/settings.json` | Editor configuration (127 lines, telemetry off, git QoL) |
| `.vscode/extensions.json` | 12 recommended extensions |
| `.vscode/keybindings.json` | Keyboard shortcuts |
| `competitive-programming/` | CP template, code-runner, debugging, testcases, launch/task configs |
| `snippets/` | Language-specific code snippets |
| `profiles/` | VS Code profiles (CP, Python, Web, Minimal) |
| `scripts/` | Automation: setup, install-extensions, backup, restore |
| `docs/` | Installation, sync, backup, restore, tips, FAQ, troubleshooting |

## Documentation

- [Installation](docs/installation.md) — Full setup guide
- [Settings Sync](docs/sync.md) — Multi-machine sync via git
- [Backup](docs/backup.md) — Timestamped settings snapshots
- [Restore](docs/restore.md) — Apply repo settings
- [Tips](docs/tips.md) — Productivity and CP shortcuts
- [FAQ](docs/faq.md) — Common questions
- [Troubleshooting](docs/troubleshooting.md) — Fix common issues

## Extensions

See `.vscode/extensions.json` for the full list. Key extensions:

| Extension | Purpose |
|-----------|---------|
| Andromeda | Dark color theme |
| Material Icon Theme | File icons |
| C/C++ (ms-vscode.cpptools) | C++ IntelliSense and debugging |
| Python (ms-python.python) | Python IntelliSense and debugging |
| Prettier | Code formatter |
| Code Runner | One-click code execution |
| Live Server | HTML preview |
| GitHub Copilot | AI-assisted coding |

## License

MIT — see [LICENSE](LICENSE).

## Author

Nazrul Islam — mhdnazrul511@gmail.com
