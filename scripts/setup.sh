#!/usr/bin/env bash

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
VSCODE_EXTENSIONS_FILE="$REPO_DIR/.vscode/extensions.json"

# --- OS detection ---
case "$(uname -s)" in
  Linux*)  OS="linux" ;;
  Darwin*) OS="macos" ;;
  MINGW*|MSYS*|CYGWIN*) OS="windows" ;;
  *)
    echo "Unsupported OS: $(uname -s)"
    exit 1
    ;;
esac

# --- VS Code User directory per platform ---
case "$OS" in
  linux)
    VSCODE_USER_DIR="${HOME}/.config/Code/User"
    ;;
  macos)
    VSCODE_USER_DIR="${HOME}/Library/Application Support/Code/User"
    ;;
  windows)
    VSCODE_USER_DIR="${APPDATA}/Code/User"
    ;;
esac

echo "OS detected: $OS"
echo "VS Code User directory: $VSCODE_USER_DIR"
echo ""

# --- Create target directory ---
mkdir -p "$VSCODE_USER_DIR"

# --- Backup existing settings ---
if [ -f "$VSCODE_USER_DIR/settings.json" ]; then
  cp "$VSCODE_USER_DIR/settings.json" "$VSCODE_USER_DIR/settings.json.backup"
  echo "  ✓ Backed up existing settings.json → settings.json.backup"
fi

# --- Copy settings and keybindings ---
cp "$REPO_DIR/.vscode/settings.json" "$VSCODE_USER_DIR/settings.json"
echo "  ✓ Copied settings.json"

cp "$REPO_DIR/.vscode/keybindings.json" "$VSCODE_USER_DIR/keybindings.json"
echo "  ✓ Copied keybindings.json"

# --- Install extensions ---
if command -v code &>/dev/null; then
  echo ""
  echo "Installing recommended extensions..."
  EXTENSION_COUNT=0
  while IFS= read -r ext; do
    [ -z "$ext" ] && continue
    echo "  → $ext"
    code --install-extension "$ext" --force &>/dev/null || echo "  ⚠ Failed to install $ext"
    EXTENSION_COUNT=$((EXTENSION_COUNT + 1))
  done < <(grep -E '^[[:space:]]*"[a-zA-Z0-9._-]+"' "$VSCODE_EXTENSIONS_FILE" | tr -d '", ')
  echo ""
  echo "  Extensions installed: $EXTENSION_COUNT"
else
  echo ""
  echo "  ⚠ 'code' command not found in PATH."
  echo "     Install extensions manually from:"
  echo "     $VSCODE_EXTENSIONS_FILE"
fi

# --- Done ---
echo ""
echo "✅ Setup complete!"
echo "   Restart VS Code or run 'Developer: Reload Window' to apply changes."
