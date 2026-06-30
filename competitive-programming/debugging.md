# Debugging

VS Code provides a full debugging experience for C++ and Python.

## Prerequisites

- **C++**: Install [gdb](https://www.sourceware.org/gdb/) (Linux/WSL), [lldb](https://lldb.llvm.org/) (macOS), or VS's debugger (Windows).
- **Python**: The [Python extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python) includes the debugger.

## Launch Configuration

The included [launch.json](./launch.json) provides:

### C++ Debug (gdb/lldb)

- Builds the file first via the `C++ Build` task.
- Launches the debugger on the compiled binary.
- Set breakpoints, step through code, inspect variables.

### Python Debug

- Launches the Python debugger on the current file.
- Supports breakpoints, call stack, variable inspection.

## Usage

1. Open the file to debug.
2. Set a breakpoint by clicking the gutter (left of line numbers).
3. Press `F5` to start debugging.
4. Use the debug toolbar to step over/into/out of functions.

## Debug Macro

The [cp-template.cpp](./cp-template.cpp) includes a debug macro:

```cpp
#ifdef LOCAL
  #define dbg(x) cerr << #x << " = " << (x) << '\n'
#else
  #define dbg(x)
#endif
```

Usage: `dbg(variable);` prints to stderr. Strip `-DLOCAL` for submissions.

## Conditional Breakpoints

Right-click a breakpoint → "Edit Breakpoint" → enter a condition:

```
v.size() > 5
```

Only triggers when the condition is true.

## Data Inspection

- **Hover** over variables during a debug session.
- **Watch** panel: add expressions to track.
- **Call Stack** panel: navigate up/down the call chain.
