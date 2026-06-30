# Changelog

## [Unreleased]

### Added
- Competitive Programming workspace identity
- Architecture specification and migration plan
- `.vscode/settings.json` with telemetry, performance, and git settings
- `.vscode/extensions.json` with 12 recommended extensions
- VS Code profiles: CP, Python, Web, Minimal
- Setup scripts: `setup.sh` (cross-platform), `install-extensions.ps1`, `backup.ps1`, `restore.ps1`
- Code snippets: C++ (12), Python (10), JavaScript (8), TypeScript (8), Markdown (11)
- Competitive Programming directory: template, code-runner, debugging, testcases, launch/task configs
- Documentation: installation, sync, backup, restore, tips, FAQ, troubleshooting

### Changed
- `settings/` → `.vscode/` (standardized layout)
- `settings/profiles/` → `profiles/` (root level)
- LICENSE completed from 2-word fragment to full MIT text
- `.gitignore` cleaned (`.vscode/` entries removed, only `*.log` kept)

### Removed
- Empty stub directories: `themes/`, `workflows/`, `extensions/`
- Empty stub files: `screenshots.md`, `settings/settings.json`, `extensions.json`, `extensions.txt`
- `vs-code-setting.json` (superseded by `.vscode/settings.json`)
