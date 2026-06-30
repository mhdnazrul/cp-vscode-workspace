# Tips

## General

### Command Palette is Your Best Friend

`Ctrl+Shift+P` opens the Command Palette — access any command without menus.

### Quick File Navigation

`Ctrl+P` to open any file by name. `Ctrl+Tab` to cycle recent files.

### Multi-Cursor Editing

- `Alt+Click` to add a cursor.
- `Ctrl+Alt+Up/Down` to add cursors above/below.
- `Ctrl+D` to select the next occurrence of the current word.
- `Ctrl+Shift+L` to select all occurrences.

### Integrated Terminal

- `` Ctrl+` `` to toggle terminal.
- `Ctrl+Shift+5` to split terminal.
- Use profiles to switch between PowerShell, bash, and cmd.

## Competitive Programming

### Fast Snippet Access

Type a snippet prefix and press `Tab`:

| Prefix | Language | Snippet |
|--------|----------|---------|
| `fastio` | C++/Python | Fast I/O boilerplate |
| `solve` | All | Solve function stub |
| `debug` | C++ | Debug macro with `LOCAL` guard |
| `binpow` | C++/Python | Binary exponentiation |
| `main` | C++ | Full main skeleton with test loop |

### Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl+Alt+N` | Run current file (Code Runner) |
| `Ctrl+Alt+M` | Stop running file |
| `F5` | Start debugging |
| `Ctrl+F5` | Run without debugging |
| `Ctrl+Shift+B` | Build current file (C++) |

### Efficient Debugging

- Set `"stopAtEntry": false` in launch.json to skip stepping into `main()`.
- Use conditional breakpoints for loop-heavy code.
- Watch expressions for complex state inspection.

## Editor

### Minimap

Toggle with `View > Show Minimap`. Useful for navigating long files.

### Bracket Pair Colorization

Enabled in settings — matching brackets are color-coded for easy pairing.

### Format on Save

When using Prettier (JavaScript/TypeScript) or Ruff (Python), files format automatically on save.

### Zen Mode

`Ctrl+K Z` for distraction-free coding. Press `Esc Esc` to exit.

## Source Control

### Git Integration

- Open the Source Control view (`Ctrl+Shift+G`).
- Stage, commit, push without leaving the editor.
- View diffs inline.

### Staging Hunks

Click the `+` next to individual lines or hunks in the diff view — no need to stage entire files.
