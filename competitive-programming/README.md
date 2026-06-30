# Competitive Programming Workspace

A ready-to-use VS Code environment for Competitive Programming. Supports C++ (primary) and Python, with fast I/O, debugging, build tasks, and test case management.

## Contents

| File | Purpose |
|------|---------|
| `cp-template.cpp` | Ready-to-use CP template with fast I/O, debug macro, and modular arithmetic |
| `code-runner.md` | Configure and use the Code Runner extension for one-click execution |
| `debugging.md` | Debugging setup with gdb/lldb and Python debugger |
| `testcases.md` | Test case management: input/output files, diff checking, stress testing |
| `launch.json` | Debug configurations for C++ and Python |
| `tasks.json` | Build and run tasks for C++ (compile, run, run with input) and Python |

## Quick Start

1. Copy `cp-template.cpp` as your starting template.
2. Write your solution in the `solve()` function.
3. Press `Ctrl+Alt+N` (Code Runner) to run, or `F5` to debug.
4. Place sample input in `input.txt` and use the "C++ Run with input" task.

## Template Features

- Fast I/O (`ios_base::sync_with_stdio(false)`)
- Debug macro (`dbg(x)`) guarded by `LOCAL` flag
- Modular arithmetic helpers (`add`, `sub`, `mul`, `binpow`)
- Typedefs for `ll`, `vi`, `pii`
- Test case loop

## Extension Recommendations

Install all recommended extensions from `.vscode/extensions.json`:

```bash
# PowerShell
.\scripts\install-extensions.ps1

# Bash
./scripts/setup.sh
```

## See Also

- [Scripts](../scripts/) — automation for backup, restore, extension installation
- [Snippets](../snippets/) — code snippets for CP in C++, Python, JS, TS, Markdown
- [Profiles](../profiles/) — VS Code profiles for CP, Python, Web, Minimal
