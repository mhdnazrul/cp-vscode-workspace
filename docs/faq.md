# FAQ

## How do I add a new extension?

1. Add the extension's ID to `.vscode/extensions.json`.
2. Run `.\scripts\install-extensions.ps1` to install it.

The format is `"publisher.extension-name"`. Find the ID in the extension's marketplace page.

## How do I modify a setting?

Edit `.vscode/settings.json` directly — it uses JSONC (supports comments). Changes apply after saving. To deploy to other machines, commit and push:

```bash
git add .vscode/settings.json
git commit -m "settings: add editor.rulers"
git push
```

## How do I add a new snippet?

1. Open the relevant file in `snippets/` (e.g., `cpp.json`).
2. Add a new entry following the existing format.
3. Commit and push.

## Can I use this with VS Code Insiders?

Yes. Replace `Code` with `Code - Insiders` in the user directory path, or point the setup scripts to the correct directory.

## How do I keep my fork up to date?

```bash
git remote add upstream https://github.com/original/awesome-vscode-setup
git fetch upstream
git rebase upstream/main
```

## What if I don't want all the extensions?

Edit `.vscode/extensions.json` and remove entries you don't need. The `recommendations` field is advisory — extension managers will only prompt, not force.

## How do I contribute?

1. Fork the repo.
2. Create a feature branch.
3. Make changes (follow the existing conventions).
4. Open a pull request.

## Do I need all the profiles?

No. Profiles are optional. Import only the ones you need (e.g., `cp.code-profile` for CP, `minimal.code-profile` for a clean slate).

## Can I use this with Remote SSH / WSL / Containers?

Yes. The settings and extensions apply to the remote environment if VS Code is running locally. For remote-specific settings, use `.vscode/settings.json` at the workspace level in the remote.

## Why are there both `.ps1` and `.sh` scripts?

`.ps1` for Windows PowerShell, `.sh` for Linux/macOS. Both do the same thing — install extensions and apply settings.
