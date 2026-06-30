# Test Cases

Efficient test case management is essential for Competitive Programming.

## File Structure

```
problem/
├── solution.cpp
├── input.txt      # Sample input
├── output.txt     # Expected output (optional)
└── my_output.txt  # Your program's output (auto-generated)
```

## Running with Input

### Option 1: Code Runner

Configure `code-runner.executorMap` (see [code-runner.md](./code-runner.md)) to include input redirection:

```json
"cpp": "cd $dir && g++ -std=c++17 -O2 $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt < input.txt"
```

### Option 2: Build Task

Use the `C++ Run with input` task ([tasks.json](./tasks.json)):

1. Create `input.txt` with sample input.
2. `Ctrl+Shift+P` → "Tasks: Run Task" → "C++ Run with input".
3. Output appears in the terminal.

### Option 3: Manual

```bash
g++ -std=c++17 -O2 solution.cpp -o solution
./solution < input.txt > my_output.txt
diff my_output.txt output.txt
```

## Comparing Outputs

### VS Code Diff

```bash
code --diff output.txt my_output.txt
```

### Terminal Diff

```bash
diff -w output.txt my_output.txt
```

The `-w` flag ignores whitespace differences (common in CP judges).

## Stress Testing

1. Write a brute-force solution (`brute.cpp`).
2. Write a random test generator (`gen.py`).
3. Run in a loop until outputs differ:

```bash
for ((i = 1; ; i++)); do
  python gen.py > input.txt
  ./solution < input.txt > my_output.txt
  ./brute < input.txt > expected.txt
  if ! diff -w my_output.txt expected.txt; then
    echo "WA on test $i"
    break
  fi
  echo "AC on test $i"
done
```

## Multiple Test Files

Organize batches:

```
tests/
├── 01.in
├── 01.out
├── 02.in
├── 02.out
└── ...
```

Run all:

```bash
for f in tests/*.in; do
  out="tests/$(basename $f .in).out"
  my="tests/$(basename $f .in).my"
  ./solution < "$f" > "$my"
  diff -w "$out" "$my" && echo "$(basename $f): AC" || echo "$(basename $f): WA"
done
```
